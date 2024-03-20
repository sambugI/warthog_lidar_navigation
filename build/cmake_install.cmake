# Install script for directory: /home/samuel/ros101/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/samuel/ros101/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/samuel/ros101/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/samuel/ros101/install" TYPE PROGRAM FILES "/home/samuel/ros101/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/samuel/ros101/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/samuel/ros101/install" TYPE PROGRAM FILES "/home/samuel/ros101/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/samuel/ros101/install/setup.bash;/home/samuel/ros101/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/samuel/ros101/install" TYPE FILE FILES
    "/home/samuel/ros101/build/catkin_generated/installspace/setup.bash"
    "/home/samuel/ros101/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/samuel/ros101/install/setup.sh;/home/samuel/ros101/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/samuel/ros101/install" TYPE FILE FILES
    "/home/samuel/ros101/build/catkin_generated/installspace/setup.sh"
    "/home/samuel/ros101/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/samuel/ros101/install/setup.zsh;/home/samuel/ros101/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/samuel/ros101/install" TYPE FILE FILES
    "/home/samuel/ros101/build/catkin_generated/installspace/setup.zsh"
    "/home/samuel/ros101/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/samuel/ros101/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/samuel/ros101/install" TYPE FILE FILES "/home/samuel/ros101/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/samuel/ros101/build/gtest/cmake_install.cmake")
  include("/home/samuel/ros101/build/cpr_gazebo/cpr_accessories_gazebo/cmake_install.cmake")
  include("/home/samuel/ros101/build/cpr_gazebo/cpr_agriculture_gazebo/cmake_install.cmake")
  include("/home/samuel/ros101/build/cpr_gazebo/cpr_empty_gazebo/cmake_install.cmake")
  include("/home/samuel/ros101/build/cpr_gazebo/cpr_inspection_gazebo/cmake_install.cmake")
  include("/home/samuel/ros101/build/cpr_gazebo/cpr_office_gazebo/cmake_install.cmake")
  include("/home/samuel/ros101/build/cpr_gazebo/cpr_orchard_gazebo/cmake_install.cmake")
  include("/home/samuel/ros101/build/gazebo_ros_pkgs/gazebo_dev/cmake_install.cmake")
  include("/home/samuel/ros101/build/cpr_gazebo/cpr_race_modules/cmake_install.cmake")
  include("/home/samuel/ros101/build/gazebo_ros_pkgs/gazebo_ros_pkgs/cmake_install.cmake")
  include("/home/samuel/ros101/build/slam_gmapping/slam_gmapping/cmake_install.cmake")
  include("/home/samuel/ros101/build/warthog_desktop/warthog_desktop/cmake_install.cmake")
  include("/home/samuel/ros101/build/warthog/warthog_msgs/cmake_install.cmake")
  include("/home/samuel/ros101/build/warthog_simulator/warthog_simulator/cmake_install.cmake")
  include("/home/samuel/ros101/build/cpr_gazebo/cpr_obstacle_gazebo/cmake_install.cmake")
  include("/home/samuel/ros101/build/gazebo_ros_pkgs/gazebo_msgs/cmake_install.cmake")
  include("/home/samuel/ros101/build/gazebo_ros_pkgs/gazebo_ros/cmake_install.cmake")
  include("/home/samuel/ros101/build/slam_gmapping/gmapping/cmake_install.cmake")
  include("/home/samuel/ros101/build/gazebo_ros_pkgs/gazebo_plugins/cmake_install.cmake")
  include("/home/samuel/ros101/build/gazebo_ros_pkgs/gazebo_ros_control/cmake_install.cmake")
  include("/home/samuel/ros101/build/warthog/warthog_control/cmake_install.cmake")
  include("/home/samuel/ros101/build/warthog/warthog_description/cmake_install.cmake")
  include("/home/samuel/ros101/build/warthog_simulator/warthog_gazebo/cmake_install.cmake")
  include("/home/samuel/ros101/build/warthog_personalizado/cmake_install.cmake")
  include("/home/samuel/ros101/build/warthog_desktop/warthog_viz/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/samuel/ros101/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
