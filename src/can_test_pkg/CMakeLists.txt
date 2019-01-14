cmake_minimum_required(VERSION 2.8.3)
project(can_test_pkg)

find_package(catkin REQUIRED COMPONENTS
  message_generation  
  roscpp
  std_msgs
)

set(CMAKE_CXX_FLAGS "-std=c++0x -O2 -Wall ${CMAKE_CXX_FLAGS}")

add_message_files(FILES
  CANPacket.msg
  KatechSonata.msg
)

generate_messages(DEPENDENCIES std_msgs)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES can_test_pkg
#  CATKIN_DEPENDS roscpp std_msgs
#  DEPENDS system_lib
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

if (EXISTS "/usr/include/canlib.h")
  add_executable(converting_CAN src/converting_CAN.cpp)
  target_include_directories(converting_CAN PRIVATE ${catkin_INCLUDE_DIRS})
  target_link_libraries(converting_CAN canlib)
  add_dependencies(converting_CAN ${catkin_EXPORTED_TARGETS})


  add_executable(receiving_CAN src/receiving_CAN.cpp)
  target_include_directories(receiving_CAN PRIVATE ${catkin_INCLUDE_DIRS})
  target_link_libraries(receiving_CAN canlib)
  add_dependencies(receiving_CAN ${catkin_EXPORTED_TARGETS})

  add_executable(sending_CAN src/sending_CAN.cpp)
  target_include_directories(sending_CAN PRIVATE ${catkin_INCLUDE_DIRS})
  target_link_libraries(sending_CAN canlib)
  add_dependencies(sending_CAN ${catkin_EXPORTED_TARGETS})
else()
	message("'canlib' is not installed. 'sending_CAN' is not built.")
endif ()

target_link_libraries(converting_CAN ${catkin_LIBRARIES})
target_link_libraries(receiving_CAN ${catkin_LIBRARIES})
target_link_libraries(sending_CAN ${catkin_LIBRARIES})
