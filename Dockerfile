FROM ros:jazzy-ros-base

ENV DEBIAN_FRONTEND=noninteractive

# Install TurtleBot4 simulator and dependencies
RUN apt-get update && \
    apt-get install -y ros-jazzy-turtlebot4-simulator ros-jazzy-irobot-create-nodes && \
    rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-c"]

WORKDIR /ros2_ws
COPY . /ros2_ws

RUN rosdep update && \
    rosdep install --from-paths src --ignore-src -r -y && \
    colcon build --symlink-install

RUN echo 'source /ros2_ws/install/setup.bash' >> ~/.bashrc

CMD ["bash"]
