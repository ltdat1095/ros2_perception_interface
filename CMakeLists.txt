cmake_minimum_required(VERSION 3.10)
project(perception_interfaces)

# --------------------------------------------------
# Default C++20 for ROS
# --------------------------------------------------
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# --------------------------------------------------
# Python3 numpy include
# --------------------------------------------------
if(NOT DEFINED Python3_NumPy_INCLUDE_DIR AND DEFINED ENV{Python3_NumPy_INCLUDE_DIR})
    set(Python3_NumPy_INCLUDE_DIR $ENV{Python3_NumPy_INCLUDE_DIR})
endif()
find_package(Python3 REQUIRED COMPONENTS Development NumPy)

# --------------------------------------------------
# Required packages
# --------------------------------------------------
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)

# --------------------------------------------------
# Build msg
# --------------------------------------------------
rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/MonoCameraBuffer.msg"
  "msg/SensorInfo.msg"
  "msg/SensorList.msg"
  "msg/DetectedObject.msg"
  "msg/InferenceResult.msg"
  DEPENDENCIES builtin_interfaces
)
ament_export_dependencies(rosidl_default_runtime)

# --------------------------------------------------
# Ament package
# --------------------------------------------------
ament_package()
