FROM ros:kinetic
# place here your application's setup specifics

SHELL ["/bin/bash", "-c"]

# Create ROS workspace
RUN mkdir -p catkin_ws/src
WORKDIR catkin_ws/src

RUN git clone https://github.com/underworlds-robot/uwds.git && cd uwds && ./download_data.sh && ./install_dependencies.sh && source /opt/ros/kinetic/setup.bash && cd .. && catkin_make && source ./devel/setup.bash

CMD source /opt/ros/kinetic/setup.bash && source ../devel/setup.bash && roslaunch uwds uwds_server.launch start_kb_lite:=true
