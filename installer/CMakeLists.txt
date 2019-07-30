cmake_minimum_required(VERSION 2.6.0 FATAL_ERROR)
project(MBES-lib)

set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR})

#add_library(mylib mylib.cpp)

add_library(boost SHARED /usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.62.0)

add_executable(datagram-dump ../src/examples/datagram-dump.cpp )
add_executable(cidco-decoder ../src/examples/cidco-decoder.cpp)
add_executable(datagram-list ../src/examples/datagram-list.cpp)
add_executable(georeference ../src/examples/georeference.cpp)
add_executable(data-cleaning ../src/examples/data-cleaning.cpp)

#target_link_libraries(mylibapp mylib)
include_directories("/usr/include/eigen3")

install(TARGETS datagram-dump RUNTIME DESTINATION bin COMPONENT Datagram-dump)
install(TARGETS cidco-decoder RUNTIME DESTINATION bin COMPONENT Cidco-decoder)
install(TARGETS datagram-list RUNTIME DESTINATION bin COMPONENT Datagram-list)
install(TARGETS georeference RUNTIME DESTINATION bin COMPONENT Georeference)
install(TARGETS data-cleaning RUNTIME DESTINATION bin COMPONENT Data-cleaning)
install(PROGRAMS ../build/bin/viewer DESTINATION bin COMPONENT PCL-Viewer)
install(PROGRAMS ../build/bin/overlap DESTINATION bin COMPONENT Overlap)
install(PROGRAMS ../build/bin/overlap DESTINATION bin COMPONENT Overlap)
install(TARGETS boost
  ARCHIVE
  DESTINATION lib
  COMPONENT RuntimeLibraries)

#install(FILES ${BOOST_LIBRARIES}
#  RUNTIME DESTINATION bin COMPONENT RuntimeLibraries
#  LIBRARY DESTINATION bin COMPONENT RuntimeLibraries
#  ARCHIVE DESTINATION Lib COMPONENT Development
#  )
#set(APP ${CMAKE_INSTALL_PREFIX}/../../build/bin/viewer)  # paths to executables
#set(DIRS "/usr/lib/x86_64-linux-gnu")   # directories to search for prerequisites
#INSTALL(CODE "
#   include(BundleUtilities)
#   fixup_bundle(\"${APP}\" \"\" \"${DIRS}\")
#   " COMPONENT Runtime)

SET(CPACK_GENERATOR "IFW")
set(CPACK_PACKAGE_NAME "MBES-lib")
set(CPACK_PACKAGE_VENDOR "CMake.org")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "MBES-lib - Multibeam echosounder function library")
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "MBES-lib")
set(CPACK_COMPONENTS_ALL
  Datagram-dump
  Cidco-decoder
  Datagram-list
  Georeference
  Data-cleaning
  PCL-Viewer
  Overlap
  RuntimeLibraries
  Development)
set(CPACK_ALL_INSTALL_TYPES Full Developer)


# This must always be last!
include(CPack)
