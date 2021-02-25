#!/bin/bash
source /opt/ros/noetic/setup.bash
source /catkin_ws/devel/setup.bash
/app/wait-for ${ROS_MASTER_URI_TEAM_Y}
/app/wait-for ${ROS_MASTER_URI_TEAM_B}
webots --mode=fast --batch --stdout --stderr --no-sandbox /app/worlds/soccer.wbt # --minimize
