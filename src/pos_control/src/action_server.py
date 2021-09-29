#! /usr/bin/env python
# encoding: utf-8
import rospy
import actionlib
from pos_control.msg import DoPositionControlAction,DoPositionControlFeedback,DoPositionControlResult



class DoActionServer:
    def __init__(self):
        self.server = actionlib.SimpleActionServer('do_position_control',DoPositionControlAction,self.execute, False)
        self.server.start()
        print("Server is running 'do_position_control'  action server ....")

    def execute(self,goal):
        feedback = DoPositionControlFeedback()
        result = DoPositionControlResult()
        rate = rospy.Rate(10) #10 Hz

        #Aqui calculamos posicion del robot
        pass



if __name__ == '__main__':
    rospy.init_node('action_server_node')
    server = DoActionServer()
    rospy.spin()
    