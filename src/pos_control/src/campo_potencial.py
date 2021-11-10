#!/usr/bin/env python
# encoding: utf-8
from math import sqrt,sin,cos,atan2,pi
import rospy
from geometry_msgs.msg import Twist,PoseStamped #Twist for publish Velocities    Pose2D to get position x,y,theta
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Odometry
from rospy.core import is_shutdown
from tf.transformations import euler_from_quaternion, quaternion_from_euler

# Posición actual que traemos desde arduino-------------------------------------------
x = 0
y = 0
theta = 0

# campo de operación de sensores
d_max=0.2
d_min=0.05

# posición deseada
xg=1
yg=1

# Parametros del control de campo potencial artificial
k_att=1.5
k_rep=6
h=0.35

# Posicion sensores
d_s = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
theta_s = [0,18,36,54,72,90,108,126,144,162,180,198,216,234,252,270,288,306,324,342]

# Posiciones del array
#idxs = [0,36,72,108,144,180,216,252,288,324,360,396,432,468,504,540,576,612,648,684]



F_repx=0
F_repy=0
F_attx=0
F_atty=0
Fx=0
Fy=0
n_Fx=0
n_Fy=0

ev = 99

vel_msg = Twist()

def odom_callback(msg):
    
    
    global x
    global y
    global theta

    
    x = msg.pose.pose.position.x
    y = msg.pose.pose.position.y

    quaternion = msg.pose.pose.orientation
    quats = [quaternion.x,quaternion.y,quaternion.z,quaternion.w]

    (roll,pitch,theta) = euler_from_quaternion(quats)
    
def laser_callback(msg):
    global d_s
    d_s[0] = msg.ranges[0]
    d_s[1] = msg.ranges[36]
    d_s[2] = msg.ranges[72]
    d_s[3] = msg.ranges[108]
    d_s[4] = msg.ranges[144]
    d_s[5] = msg.ranges[180]
    d_s[6] = msg.ranges[216]
    d_s[7] = msg.ranges[252]
    d_s[8] = msg.ranges[288]
    d_s[9] = msg.ranges[324]
    d_s[10] = msg.ranges[360]
    d_s[11] = msg.ranges[396]
    d_s[12] = msg.ranges[432]
    d_s[13] = msg.ranges[468]
    d_s[14] = msg.ranges[504]
    d_s[15] = msg.ranges[540]
    d_s[16] = msg.ranges[576]
    d_s[17] = msg.ranges[612]
    d_s[18] = msg.ranges[648]
    d_s[19] = msg.ranges[684]
    print(d_s)
    # Posiciones del array
#idxs = [0,36,72,108,144,180,216,252,288,324,360,396,432,468,504,540,576,612,648,684]



if __name__=="__main__":
    try:
        rospy.init_node('campo_potencial_node',anonymous=False)
        rate = rospy.Rate(50)

        vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10) #Publisher
        rospy.Subscriber('/odom',Odometry,odom_callback)
        rospy.Subscriber('/scan',LaserScan,laser_callback)



        while(1):
                # Fuerza de repulsión
            if(ev > 0.1):
                for i in range(0,len(d_s)):
                    if d_s[i]<d_max:
                        if d_s[i]<d_min:
                            d_s[i]=d_min
                        F_repx= F_repx + k_rep*(d_s[i]-d_max)*cos(theta_s[i]*(pi/180)+theta)
                        F_repy= F_repy + k_rep*(d_s[i]-d_max)*sin(theta_s[i]*(pi/180)+theta)

                # Fuerza de atracción
                F_attx=k_att*(xg-x)
                F_atty=k_att*(yg-y)

                # Fuerza total
                Fx = F_attx + F_repx
                Fy = F_atty + F_repy

                # Normalización
                n_Fx=Fx/(((Fx**2)+(Fy**2))**(0.5))
                n_Fy=Fy/(((Fx**2)+(Fy**2))**(0.5))

                # Nueva posición deseada
                xd=x + h*n_Fx
                yd=y + h*n_Fy


                # aplicamos control normal
                L = 0.48
                R = 0.055
                K = [0.1,1.5]
                ev = 0
                ew = 0
                v = 0
                w = 0
                wr=0
                wl=0

                ev = sqrt(((xd-x)**2)+((yd-y)**2))
                v = K[0]*ev
                ew = atan2((yd-y),(xd-x)) - theta
                ew = atan2(sin(ew),cos(ew))
                w = K[1] * ew

                vel_msg.linear.x = v
                vel_msg.angular.z = w
                #vel_msg.linear.y = vel_msg.linear.z = vel_msg.angular.x = vel_msg.angular.y = 0

                vel_pub.publish(vel_msg)
                rate.sleep()
        vel_msg.linear.x = 0
        vel_msg.angular.z = 0
        vel_pub.publish(vel_msg)
        rospy.loginfo("Goal Reached!!")
        
    except rospy.ROSInterruptException:
        pass
