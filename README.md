# RCJ Soccer Simulator Tournament utils - ROS branch

## Dev setup

Prerequisites: docker, open source GPU driver (Intel or AMD; NVidia supported but not yet autodetect)

        git clone git@github.com:RoboCupJuniorTC/rcj-soccer-sim-tournament-utils.git
        cd rcj-soccer-sim-tournament-utils
        git submodule update --init
        docker build -t rcj-soccer-sim .
        docker build -t rcj-soccer-sim-rosbots -f Dockerfile-RCJ-Team
        # Finally run simulation
        JOB_ID=42 TEAM_Y=999 TEAM_B=999 ./run-docker.sh

Three containers get started by this: webots_42, teamYros_42 and teamBros_42. For testing 
and debugging you can launch shells inside of these by running something like 
`docker exec -ti teamYros_42 /bin/bash`. Once inside run `. /opt/ros/noetic/setup.bash` and 
`. /catkin_ws/devel/setup.bash`, then all ROS tools are available. Useful commands include:
`rostopic list`, `rostopic echo` and `rostopic pub`. Example code interacting with the world 
through ROS can be found in the `rcj-tournament-ros` branch of the `rcj-soccer-sim` repository.
