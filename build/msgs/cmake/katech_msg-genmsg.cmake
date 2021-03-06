# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "katech_msg: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ikatech_msg:/home/katech/catkin_ws/src/msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(katech_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/katech/catkin_ws/src/msgs/msg/KatechTest.msg" NAME_WE)
add_custom_target(_katech_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "katech_msg" "/home/katech/catkin_ws/src/msgs/msg/KatechTest.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(katech_msg
  "/home/katech/catkin_ws/src/msgs/msg/KatechTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katech_msg
)

### Generating Services

### Generating Module File
_generate_module_cpp(katech_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katech_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(katech_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(katech_msg_generate_messages katech_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/katech/catkin_ws/src/msgs/msg/KatechTest.msg" NAME_WE)
add_dependencies(katech_msg_generate_messages_cpp _katech_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(katech_msg_gencpp)
add_dependencies(katech_msg_gencpp katech_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS katech_msg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(katech_msg
  "/home/katech/catkin_ws/src/msgs/msg/KatechTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katech_msg
)

### Generating Services

### Generating Module File
_generate_module_eus(katech_msg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katech_msg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(katech_msg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(katech_msg_generate_messages katech_msg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/katech/catkin_ws/src/msgs/msg/KatechTest.msg" NAME_WE)
add_dependencies(katech_msg_generate_messages_eus _katech_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(katech_msg_geneus)
add_dependencies(katech_msg_geneus katech_msg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS katech_msg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(katech_msg
  "/home/katech/catkin_ws/src/msgs/msg/KatechTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katech_msg
)

### Generating Services

### Generating Module File
_generate_module_lisp(katech_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katech_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(katech_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(katech_msg_generate_messages katech_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/katech/catkin_ws/src/msgs/msg/KatechTest.msg" NAME_WE)
add_dependencies(katech_msg_generate_messages_lisp _katech_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(katech_msg_genlisp)
add_dependencies(katech_msg_genlisp katech_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS katech_msg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(katech_msg
  "/home/katech/catkin_ws/src/msgs/msg/KatechTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katech_msg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(katech_msg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katech_msg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(katech_msg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(katech_msg_generate_messages katech_msg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/katech/catkin_ws/src/msgs/msg/KatechTest.msg" NAME_WE)
add_dependencies(katech_msg_generate_messages_nodejs _katech_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(katech_msg_gennodejs)
add_dependencies(katech_msg_gennodejs katech_msg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS katech_msg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(katech_msg
  "/home/katech/catkin_ws/src/msgs/msg/KatechTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katech_msg
)

### Generating Services

### Generating Module File
_generate_module_py(katech_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katech_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(katech_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(katech_msg_generate_messages katech_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/katech/catkin_ws/src/msgs/msg/KatechTest.msg" NAME_WE)
add_dependencies(katech_msg_generate_messages_py _katech_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(katech_msg_genpy)
add_dependencies(katech_msg_genpy katech_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS katech_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katech_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katech_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(katech_msg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katech_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katech_msg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(katech_msg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katech_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katech_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(katech_msg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katech_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katech_msg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(katech_msg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katech_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katech_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katech_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(katech_msg_generate_messages_py std_msgs_generate_messages_py)
endif()
