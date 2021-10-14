#!/usr/bin/env python 

from math import pi,sin,cos,pow, sqrt,atan2
#from time import thread_time
import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from rospy.core import is_shutdown
from tf.transformations import euler_from_quaternion, quaternion_from_euler

L = 0.202 #Distance from the center of the wheel to the center o the robot
R = 0.0465 #Radio of the wheel

x_d = 1.5; #Desired x position
y_d = 1.5;  #Desired y position

vel_msg = Twist()

#t = 0.0; t0 = 0.0; #Timer, initial time
#T = 100.0;  #Trajectory period, 
k = 0.5 #controller gains kx = ky = k
v_max = 0.22; w_max = 2.84; # maximum velocities

#ex = 0.0; ey = 0.0; V = 0.0; W = 0.0 #Errors and velocities initializations
x_i = 0; y_i = 0; theta_i = 0
def odom_callback(msg):
    global x_i
    global y_i
    global theta_i
    
    x_i = msg.pose.pose.position.x
    y_i = msg.pose.pose.position.y

    quaternion = msg.pose.pose.orientation
    quats = [quaternion.x,quaternion.y,quaternion.z,quaternion.w]

    (roll,pitch,theta_i) = euler_from_quaternion(quats)

    



"""
This node is going to publish  velocities trough Twist 
and is going to suscribe to Odometry
"""
if __name__=="__main__":
    try:
        rospy.init_node('position_control_node',anonymous=False)
        rate = rospy.Rate(50)

        vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10) #Publisher
        rospy.Subscriber('/odom',Odometry,odom_callback)   #Suscriber

        x_error = x_d - x_i
        y_error = y_d - y_i

        while(x_error > 0.02 or y_error > 0.02):
            v_error = sqrt(pow(x_error,2) + pow(y_error,2)) #Lineal velocity error
            w_error = atan2(y_error,x_error) - theta_i # This is equivalent to theta_d - theta_i
            w_error = atan2(sin(w_error),cos(w_error))  # Boundary in -[-pi,pi]

            v = k*v_error
            w = k*w_error

            """
            wheel_l = (2*v - w*L)/(2*R)
            wheel_r = (2*v + w*L)/(2*R)
            """
            # Velocities Saturation 
            if (abs(v)>v_max):
                v = v_max*abs(v)/v
            if (abs(w)>w_max):
                w = w_max*abs(w)/w

            vel_msg.linear.x = v
            vel_msg.angular.z = w

            vel_pub.publish(vel_msg)
            
            x_error = x_d - x_i
            y_error = y_d - y_i

            rate.sleep()

        vel_msg.linear.x = 0
        vel_msg.angular.z = 0
        vel_pub.publish(vel_msg)
        rospy.loginfo("Goal Reached!!")
            
    except rospy.ROSInterruptException:
        pass

