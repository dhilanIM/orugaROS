# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pos_control: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ipos_control:/home/dhilan/oruga_ws/devel/share/pos_control/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pos_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg" NAME_WE)
add_custom_target(_pos_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pos_control" "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg" ""
)

get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg" NAME_WE)
add_custom_target(_pos_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pos_control" "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg" ""
)

get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg" NAME_WE)
add_custom_target(_pos_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pos_control" "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg" "actionlib_msgs/GoalID:pos_control/DoPositionControlGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg" NAME_WE)
add_custom_target(_pos_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pos_control" "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg" "actionlib_msgs/GoalID:pos_control/DoPositionControlResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg" NAME_WE)
add_custom_target(_pos_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pos_control" "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg" "actionlib_msgs/GoalID:pos_control/DoPositionControlFeedback:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlAction.msg" NAME_WE)
add_custom_target(_pos_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pos_control" "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlAction.msg" "actionlib_msgs/GoalID:pos_control/DoPositionControlFeedback:pos_control/DoPositionControlResult:pos_control/DoPositionControlGoal:actionlib_msgs/GoalStatus:pos_control/DoPositionControlActionFeedback:std_msgs/Header:pos_control/DoPositionControlActionResult:pos_control/DoPositionControlActionGoal"
)

get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg" NAME_WE)
add_custom_target(_pos_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pos_control" "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pos_control
)
_generate_msg_cpp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pos_control
)
_generate_msg_cpp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pos_control
)
_generate_msg_cpp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pos_control
)
_generate_msg_cpp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pos_control
)
_generate_msg_cpp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pos_control
)
_generate_msg_cpp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pos_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(pos_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pos_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pos_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pos_control_generate_messages pos_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_cpp _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_cpp _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_cpp _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_cpp _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_cpp _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlAction.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_cpp _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_cpp _pos_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pos_control_gencpp)
add_dependencies(pos_control_gencpp pos_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pos_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pos_control
)
_generate_msg_eus(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pos_control
)
_generate_msg_eus(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pos_control
)
_generate_msg_eus(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pos_control
)
_generate_msg_eus(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pos_control
)
_generate_msg_eus(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pos_control
)
_generate_msg_eus(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pos_control
)

### Generating Services

### Generating Module File
_generate_module_eus(pos_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pos_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pos_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pos_control_generate_messages pos_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_eus _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_eus _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_eus _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_eus _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_eus _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlAction.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_eus _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_eus _pos_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pos_control_geneus)
add_dependencies(pos_control_geneus pos_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pos_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pos_control
)
_generate_msg_lisp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pos_control
)
_generate_msg_lisp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pos_control
)
_generate_msg_lisp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pos_control
)
_generate_msg_lisp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pos_control
)
_generate_msg_lisp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pos_control
)
_generate_msg_lisp(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pos_control
)

### Generating Services

### Generating Module File
_generate_module_lisp(pos_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pos_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pos_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pos_control_generate_messages pos_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_lisp _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_lisp _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_lisp _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_lisp _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_lisp _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlAction.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_lisp _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_lisp _pos_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pos_control_genlisp)
add_dependencies(pos_control_genlisp pos_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pos_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pos_control
)
_generate_msg_nodejs(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pos_control
)
_generate_msg_nodejs(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pos_control
)
_generate_msg_nodejs(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pos_control
)
_generate_msg_nodejs(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pos_control
)
_generate_msg_nodejs(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pos_control
)
_generate_msg_nodejs(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pos_control
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pos_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pos_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pos_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pos_control_generate_messages pos_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_nodejs _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_nodejs _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_nodejs _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_nodejs _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_nodejs _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlAction.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_nodejs _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_nodejs _pos_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pos_control_gennodejs)
add_dependencies(pos_control_gennodejs pos_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pos_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pos_control
)
_generate_msg_py(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pos_control
)
_generate_msg_py(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pos_control
)
_generate_msg_py(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pos_control
)
_generate_msg_py(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pos_control
)
_generate_msg_py(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg;/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pos_control
)
_generate_msg_py(pos_control
  "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pos_control
)

### Generating Services

### Generating Module File
_generate_module_py(pos_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pos_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pos_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pos_control_generate_messages pos_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlResult.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_py _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlGoal.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_py _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionGoal.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_py _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionResult.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_py _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlActionFeedback.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_py _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlAction.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_py _pos_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhilan/oruga_ws/devel/share/pos_control/msg/DoPositionControlFeedback.msg" NAME_WE)
add_dependencies(pos_control_generate_messages_py _pos_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pos_control_genpy)
add_dependencies(pos_control_genpy pos_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pos_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pos_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pos_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pos_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(pos_control_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pos_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pos_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pos_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(pos_control_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pos_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pos_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pos_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(pos_control_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pos_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pos_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pos_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(pos_control_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pos_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pos_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pos_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pos_control_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(pos_control_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
