cmake_minimum_required(VERSION 2.8.3)
project(msg_transfer_pkg)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES msg_transfer_pkg
#  CATKIN_DEPENDS roscpp std_msgs
#  DEPENDS system_lib
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(msg_publisher_node src/msg_publisher_node.cpp)
target_link_libraries(msg_publisher_node ${catkin_LIBRARIES})

add_executable(msg_subscriber_node src/msg_subscriber_node.cpp)
target_link_libraries(msg_subscriber_node ${catkin_LIBRARIES})

add_executable(msg_subscriber_node_2 src/msg_subscriber_node_2.cpp)
target_link_libraries(msg_subscriber_node_2 ${catkin_LIBRARIES})