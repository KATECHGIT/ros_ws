cmake_minimum_required(VERSION 2.8.3)
project(katech_msg_test_pkg)

find_package(catkin REQUIRED COMPONENTS
  message_generation  
  roscpp
  std_msgs
)

add_message_files(FILES Katech_test_msg.msg)

generate_messages(DEPENDENCIES std_msgs)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES katech_msg_test_pkg
#  CATKIN_DEPENDS roscpp std_msgs
#  DEPENDS system_lib
)


include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(katech_msg_publisher_node src/katech_msg_publisher_node.cpp)
target_link_libraries(katech_msg_publisher_node ${catkin_LIBRARIES})
add_dependencies(katech_msg_publisher_node ${catkin_EXPORTED_TARGETS})

add_executable(katech_msg_subscriber_node src/katech_msg_subscriber_node.cpp)
target_link_libraries(katech_msg_subscriber_node ${catkin_LIBRARIES})
add_dependencies(katech_msg_subscriber_node ${catkin_EXPORTED_TARGETS})