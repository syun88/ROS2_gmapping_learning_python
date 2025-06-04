# ROS2_gmapping_learning_python
not use rviz2 to show map and base_link .etc learning project use python

### work at ubuntu24.04 RSO2-JAZZY

install turtlebot4 
```commandline
sudo apt update && sudo apt install ros-humble-turtlebot4-desktop
```
```commandline
sudo apt install ros-jazzy-turtlebot4-simulator ros-jazzy-irobot-create-nodes
```

clone source
```
cd src 
git clone https://github.com/turtlebot/turtlebot4_simulator.git -b jazzy
```

### Docker
The repository provides a `Dockerfile` for running the simulator in a container. Build the image with:
```bash
docker build -t gmapping_py .
```
Run the container with:
```bash
docker run -it gmapping_py
```
The workspace is built during the image build and sourced automatically when the container starts.
