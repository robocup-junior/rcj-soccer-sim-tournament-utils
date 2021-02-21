#!/bin/bash
#./x11docker/x11docker --gpu --network=none -- \
./x11docker/x11docker --gpu --xorg --runtime=nvidia --network=none -- \
-v ${HOME}/webots_video_out/:/out \
-v $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_Y}/robot1/robot1.py:/app/controllers/rcj_soccer_player_y1/rcj_soccer_player_y1.py:ro \
-v $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_Y}/robot2/robot2.py:/app/controllers/rcj_soccer_player_y2/rcj_soccer_player_y2.py:ro \
-v $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_Y}/robot3/robot3.py:/app/controllers/rcj_soccer_player_y3/rcj_soccer_player_y3.py:ro \
-v $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_Y}/team_libraries/:/app/controllers/team_${TEAM_Y}_libraries/:ro \
-v $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_Y}/logo.png:/app/worlds/soccer/yellow.png:ro \
--env TEAM_YELLOW_NAME="$(cat $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_Y}/team_name.txt)" \
--env TEAM_YELLOW_ID=${TEAM_Y} \
-v $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_B}/robot1/robot1.py:/app/controllers/rcj_soccer_player_b1/rcj_soccer_player_b1.py:ro \
-v $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_B}/robot2/robot2.py:/app/controllers/rcj_soccer_player_b2/rcj_soccer_player_b2.py:ro \
-v $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_B}/robot3/robot3.py:/app/controllers/rcj_soccer_player_b3/rcj_soccer_player_b3.py:ro \
-v $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_B}/team_libraries/:/app/controllers/team_${TEAM_B}_libraries/:ro \
-v $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_B}/logo.png:/app/worlds/soccer/blue.png:ro \
--env TEAM_BLUE_NAME="$(cat $(pwd)/rcj-soccer-sim-2021-robot-code/${TEAM_B}/team_name.txt)" \
--env TEAM_BLUE_ID=${TEAM_B} \
--env RCJ_SIM_AUTO_MODE=true \
--env TEAM_B_INITIAL_SCORE=${TEAM_B_INITIAL_SCORE} \
--env TEAM_Y_INITIAL_SCORE=${TEAM_Y_INITIAL_SCORE} \
--env MATCH_ID=${MATCH_ID} \
--env HALF_ID=${HALF_ID} \
--rm \
-- rcj-soccer-sim



