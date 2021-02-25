FROM ubuntu:focal
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install wget gdebi-core xvfb supervisor ffmpeg x264 aria2 xserver-xorg-video-all mesa-utils tigervnc-standalone-server python3 python3-pip xdotool xrdp x11-apps x11-common x11-session-utils x11-xkb-utils x11-xserver-utils x11proto-core-dev x11proto-dev xserver-common xserver-xorg-core xserver-xorg-video-nvidia-460 libxv1 x11-xserver-utils && pip3 install websockets
RUN aria2c -x 16 "https://github.com/cyberbotics/webots/releases/download/R2021a/webots_2021a_amd64.deb" && gdebi -n webots_2021a_amd64.deb && rm webots_2021a_amd64.deb
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install gpg netcat curl && sh -c '. /etc/lsb-release && echo "deb http://packages.ros.org.ros.informatik.uni-freiburg.de/ros/ubuntu $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/ros-latest.list' && apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential ros-noetic-webots-ros && rosdep init && rosdep update
VOLUME /out
#RUN DEBIAN_FRONTEND=noninteractive apt-get -y install xorg
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install libglvnd0 libgl1 libglx0 libegl1 libxext6 libx11-6
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES graphics,utility,compute
ENTRYPOINT /app/run-webots.sh
COPY rcj-soccer-sim /app
COPY *.sh /app/
COPY catkin_ws/ /catkin_ws/
RUN bash -c "source /opt/ros/noetic/setup.bash && source /catkin_ws/devel/setup.bash && cd /catkin_ws/ && catkin_make"
COPY wait-for/wait-for /app/
RUN chmod -R 777 /app /catkin_ws/
