cmake_minimum_required(VERSION 3.7 FATAL_ERROR)
project(VIEWER)
find_package(PCL 1.8 REQUIRED)
find_package(Qt5Widgets REQUIRED)
find_package (Eigen3 3.3 REQUIRED)

include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})

add_definitions(${PCL_DEFINITIONS})
add_executable(viewer viewer.cpp ../../getopt.c)

target_link_libraries(viewer ${PCL_LIBRARIES})

if (UNIX)
  include_directories("/usr/include/eigen3")
endif (UNIX)

if (WIN32)
  include_directories("C:/Users/cidco/Library/eigen")
endif (WIN32)

install(TARGETS viewer RUNTIME DESTINATION bin)

if (UNIX)
  # The path used in this command are relative to the
  # insaller build script "../../installer/build.sh"
  install(CODE "
      function(gp_resolved_file_type_override resolved_file type_var)
         set(\${type_var} local PARENT_SCOPE)
      endfunction()
      include(BundleUtilities)
      fixup_bundle(\"\${CMAKE_INSTALL_PREFIX}/bin/viewer\" \"\" \"\")
  " COMPONENT Runtime)
endif (UNIX)
