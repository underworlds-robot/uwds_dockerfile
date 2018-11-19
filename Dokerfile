FROM ros:kinetic
# place here your application's setup specifics

SHELL ["/bin/bash", "-c"]

# Install dependencies
RUN apt-get update && apt-get install -y assimp-utils ros-kinetic-pose-cov-ops

# Create ROS workspace
RUN mkdir -p catkin_ws/src
WORKDIR catkin_ws/src

RUN git clone https://github.com/underworlds-robot/uwds_msgs.git && git clone https://github.com/underworlds-robot/uwds.git

RUN cd uwds && pip install -r requirements.txt

RUN source /opt/ros/kinetic/setup.bash && cd .. && catkin_make && source ./devel/setup.bash

CMD source /opt/ros/kinetic/setup.bash && source ../devel/setup.bash && roslaunch uwds uwds_server.launch
