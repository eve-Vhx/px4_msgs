cmake_minimum_required(VERSION 3.5)

project(px4_msgs)

list(INSERT CMAKE_MODULE_PATH 0 "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
	add_compile_options(-Wall -Wextra)
endif()

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

# ##############################################################################
# Generate ROS messages, ROS2 interfaces and IDL files #
# ##############################################################################

# get all msg files
set(MSGS_DIR "${CMAKE_CURRENT_SOURCE_DIR}/msg")
#####
#
# This file maps all the topics that are to be used on the micro DDS client.
#
#####


set(DESIRE_MSGS
    "${MSGS_DIR}/FailsafeFlags.msg"
    "${MSGS_DIR}/PositionSetpointTriplet.msg"
    "${MSGS_DIR}/SensorCombined.msg"
    "${MSGS_DIR}/TimesyncStatus.msg"
    "${MSGS_DIR}/VehicleAngularVelocity.msg"
    "${MSGS_DIR}/VehicleAttitude.msg"
    "${MSGS_DIR}/VehicleControlMode.msg"
    "${MSGS_DIR}/VehicleGlobalPosition.msg"
    "${MSGS_DIR}/SensorGps.msg"
    "${MSGS_DIR}/VehicleLocalPosition.msg"
    "${MSGS_DIR}/VehicleOdometry.msg"
    "${MSGS_DIR}/VehicleStatus.msg"
    "${MSGS_DIR}/VehicleTrajectoryWaypoint.msg"
    "${MSGS_DIR}/OffboardControlMode.msg"
    "${MSGS_DIR}/OnboardComputerStatus.msg"
    "${MSGS_DIR}/ObstacleDistance.msg"
    "${MSGS_DIR}/SensorOpticalFlow.msg"
    "${MSGS_DIR}/TelemetryStatus.msg"
    "${MSGS_DIR}/TrajectorySetpoint.msg"
    "${MSGS_DIR}/VehicleAttitudeSetpoint.msg"
    "${MSGS_DIR}/VehicleRatesSetpoint.msg"
    "${MSGS_DIR}/VehicleCommand.msg"
    "${MSGS_DIR}/VehicleTrajectoryBezier.msg"
    "${MSGS_DIR}/SetNamespace.msg"
    "${MSGS_DIR}/CollisionConstraints.msg"
    "${MSGS_DIR}/BatteryStatus.msg"
    "${MSGS_DIR}/DistanceSensor.msg"
    "${MSGS_DIR}/GimbalControls.msg"
    "${MSGS_DIR}/PositionSetpoint.msg"
    "${MSGS_DIR}/TrajectoryWaypoint.msg"
    "${MSGS_DIR}/TrajectoryBezier.msg"
    "${MSGS_DIR}/MissionRequest.msg"
    "${MSGS_DIR}/MissionStatus.msg"
    "${MSGS_DIR}/IrlockReport.msg"
    "${MSGS_DIR}/LandingTargetPose.msg"
)
set(PX4_MSGS)
foreach(_msg ${DESIRE_MSGS})
  if(EXISTS ${_msg})
    file(RELATIVE_PATH _relative_msg ${CMAKE_CURRENT_SOURCE_DIR} ${_msg})
    list(APPEND PX4_MSGS ${_relative_msg})
  else()
    message(FATAL_ERROR "Desired message file '${_msg}' does not exist.")
  endif()
endforeach()

file(GLOB ROS_MSG_DIR_LIST "${MSGS_DIR}/*.msg")

set(ROS_MSG_DIR_LIST "${ROS_MSG_DIR_LIST}" CACHE INTERNAL "ROS_MSG_DIR_LIST")

# Generate introspection "${MSGS_DIR}/++.msg" and IDL files
rosidl_generate_interfaces(${PROJECT_NAME} ${PX4_MSGS}
	DEPENDENCIES builtin_interfaces
	ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
