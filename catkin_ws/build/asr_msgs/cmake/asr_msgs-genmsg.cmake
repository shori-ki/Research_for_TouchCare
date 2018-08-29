# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "asr_msgs: 6 messages, 0 services")

set(MSG_I_FLAGS "-Iasr_msgs:/root/catkin_ws/src/asr_msgs-master/msg;-Igeometry_msgs:/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(asr_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrViewport.msg" NAME_WE)
add_custom_target(_asr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "asr_msgs" "/root/catkin_ws/src/asr_msgs-master/msg/AsrViewport.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg" NAME_WE)
add_custom_target(_asr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "asr_msgs" "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrTypeAndId.msg" NAME_WE)
add_custom_target(_asr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "asr_msgs" "/root/catkin_ws/src/asr_msgs-master/msg/AsrTypeAndId.msg" ""
)

get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPointCloud.msg" NAME_WE)
add_custom_target(_asr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "asr_msgs" "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPointCloud.msg" "geometry_msgs/Point:geometry_msgs/Pose:asr_msgs/AsrAttributedPoint:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrObject.msg" NAME_WE)
add_custom_target(_asr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "asr_msgs" "/root/catkin_ws/src/asr_msgs-master/msg/AsrObject.msg" "std_msgs/ColorRGBA:std_msgs/Header:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrGlove.msg" NAME_WE)
add_custom_target(_asr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "asr_msgs" "/root/catkin_ws/src/asr_msgs-master/msg/AsrGlove.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrViewport.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asr_msgs
)
_generate_msg_cpp(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asr_msgs
)
_generate_msg_cpp(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrTypeAndId.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asr_msgs
)
_generate_msg_cpp(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPointCloud.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asr_msgs
)
_generate_msg_cpp(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/PoseWithCovariance.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asr_msgs
)
_generate_msg_cpp(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrGlove.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asr_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(asr_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asr_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(asr_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(asr_msgs_generate_messages asr_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrViewport.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_cpp _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_cpp _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrTypeAndId.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_cpp _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPointCloud.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_cpp _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrObject.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_cpp _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrGlove.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_cpp _asr_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(asr_msgs_gencpp)
add_dependencies(asr_msgs_gencpp asr_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS asr_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrViewport.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asr_msgs
)
_generate_msg_eus(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asr_msgs
)
_generate_msg_eus(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrTypeAndId.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asr_msgs
)
_generate_msg_eus(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPointCloud.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asr_msgs
)
_generate_msg_eus(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/PoseWithCovariance.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asr_msgs
)
_generate_msg_eus(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrGlove.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asr_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(asr_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asr_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(asr_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(asr_msgs_generate_messages asr_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrViewport.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_eus _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_eus _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrTypeAndId.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_eus _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPointCloud.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_eus _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrObject.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_eus _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrGlove.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_eus _asr_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(asr_msgs_geneus)
add_dependencies(asr_msgs_geneus asr_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS asr_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrViewport.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asr_msgs
)
_generate_msg_lisp(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asr_msgs
)
_generate_msg_lisp(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrTypeAndId.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asr_msgs
)
_generate_msg_lisp(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPointCloud.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asr_msgs
)
_generate_msg_lisp(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/PoseWithCovariance.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asr_msgs
)
_generate_msg_lisp(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrGlove.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asr_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(asr_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asr_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(asr_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(asr_msgs_generate_messages asr_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrViewport.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_lisp _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_lisp _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrTypeAndId.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_lisp _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPointCloud.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_lisp _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrObject.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_lisp _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrGlove.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_lisp _asr_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(asr_msgs_genlisp)
add_dependencies(asr_msgs_genlisp asr_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS asr_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrViewport.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asr_msgs
)
_generate_msg_nodejs(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asr_msgs
)
_generate_msg_nodejs(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrTypeAndId.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asr_msgs
)
_generate_msg_nodejs(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPointCloud.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asr_msgs
)
_generate_msg_nodejs(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/PoseWithCovariance.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asr_msgs
)
_generate_msg_nodejs(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrGlove.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asr_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(asr_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asr_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(asr_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(asr_msgs_generate_messages asr_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrViewport.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_nodejs _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_nodejs _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrTypeAndId.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_nodejs _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPointCloud.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_nodejs _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrObject.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_nodejs _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrGlove.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_nodejs _asr_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(asr_msgs_gennodejs)
add_dependencies(asr_msgs_gennodejs asr_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS asr_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrViewport.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asr_msgs
)
_generate_msg_py(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asr_msgs
)
_generate_msg_py(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrTypeAndId.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asr_msgs
)
_generate_msg_py(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPointCloud.msg"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asr_msgs
)
_generate_msg_py(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/PoseWithCovariance.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Quaternion.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Pose.msg;/root/catkin_ws/src/common_msgs-jade-devel/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asr_msgs
)
_generate_msg_py(asr_msgs
  "/root/catkin_ws/src/asr_msgs-master/msg/AsrGlove.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asr_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(asr_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asr_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(asr_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(asr_msgs_generate_messages asr_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrViewport.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_py _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPoint.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_py _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrTypeAndId.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_py _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrAttributedPointCloud.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_py _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrObject.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_py _asr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/asr_msgs-master/msg/AsrGlove.msg" NAME_WE)
add_dependencies(asr_msgs_generate_messages_py _asr_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(asr_msgs_genpy)
add_dependencies(asr_msgs_genpy asr_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS asr_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asr_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asr_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(asr_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(asr_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asr_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asr_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(asr_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(asr_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asr_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asr_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(asr_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(asr_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asr_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asr_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(asr_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(asr_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asr_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asr_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asr_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(asr_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(asr_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
