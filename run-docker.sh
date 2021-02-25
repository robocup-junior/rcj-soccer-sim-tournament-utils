#!/bin/bash

Y_NET=teamYros-net-${JOB_ID}
B_NET=teamBros-net-${JOB_ID}
docker network create --internal $Y_NET
docker network create --internal $B_NET
Y_ROSCORE_CONTAINER_NAME=teamYros_${JOB_ID}
B_ROSCORE_CONTAINER_NAME=teamBros_${JOB_ID}
docker run -d --rm --name $Y_ROSCORE_CONTAINER_NAME --network=$Y_NET -v $(pwd)/outputs/${JOB_ID}/team_y_ros_out:/out/ rcj-soccer-sim-rosbots
docker run -d --rm --name $B_ROSCORE_CONTAINER_NAME --network=$B_NET -v $(pwd)/outputs/${JOB_ID}/team_b_ros_out:/out/ rcj-soccer-sim-rosbots
WEBOTS_CONTAINER_NAME=webots_${JOB_ID}
NET=$Y_NET CONTAINER=$WEBOTS_CONTAINER_NAME ./connect-network.sh > /dev/null &
NET=$B_NET CONTAINER=$WEBOTS_CONTAINER_NAME ./connect-network.sh > /dev/null &

#./x11docker/x11docker --gpu --xorg --runtime=nvidia --network=none -- \
./x11docker/x11docker --gpu --name $WEBOTS_CONTAINER_NAME -- \
-v $(pwd)/outputs/${JOB_ID}/webots_video_out:/out \
-v $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_Y}/logo.png:/app/worlds/soccer/yellow.png:ro \
--env TEAM_YELLOW_NAME="$(cat $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_Y}/team_name.txt)" \
--env TEAM_YELLOW_ID=${TEAM_Y} \
-v $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_B}/logo.png:/app/worlds/soccer/blue.png:ro \
--env TEAM_BLUE_NAME="$(cat $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_B}/team_name.txt)" \
--env TEAM_BLUE_ID=${TEAM_B} \
--env RCJ_SIM_AUTO_MODE=true \
--env TEAM_B_INITIAL_SCORE=${TEAM_B_INITIAL_SCORE} \
--env TEAM_Y_INITIAL_SCORE=${TEAM_Y_INITIAL_SCORE} \
--env MATCH_ID=${MATCH_ID} \
--env HALF_ID=${HALF_ID} \
--env ROS_MASTER_URI_TEAM_Y=http://$Y_ROSCORE_CONTAINER_NAME:11311 \
--env ROS_MASTER_URI_TEAM_B=http://$B_ROSCORE_CONTAINER_NAME:11311 \
--rm \
-- rcj-soccer-sim

sleep 3

docker kill $Y_ROSCORE_CONTAINER_NAME
docker kill $B_ROSCORE_CONTAINER_NAME
docker network rm $Y_NET
docker network rm $B_NET
