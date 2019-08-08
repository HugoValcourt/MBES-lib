cmake_minimum_required(VERSION 3.7 FATAL_ERROR)
project(MBES-lib)

set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR})

if (UNIX)
  install(PROGRAMS ../build/bin/datagram-dump DESTINATION bin COMPONENT "Datagram Dump")
  install(PROGRAMS ../build/bin/cidco-decoder DESTINATION bin COMPONENT "Cidco Decoder")
  install(PROGRAMS ../build/bin/datagram-list DESTINATION bin COMPONENT "Datagram List")
  install(PROGRAMS ../build/bin/georeference DESTINATION bin COMPONENT "Georeference")
  install(PROGRAMS ../build/bin/data-cleaning DESTINATION bin COMPONENT "Data Cleaning")
  install(PROGRAMS ../build/bin/viewer DESTINATION "bin/PCL Viewer & Overlap" COMPONENT "PCL Viewer & Overlap")
  install(PROGRAMS ../build/bin/overlap DESTINATION "bin/PCL Viewer & Overlap" COMPONENT "PCL Viewer & Overlap")
endif (UNIX)

if (WIN32)
  install(PROGRAMS ../build/bin/datagram-dump.exe DESTINATION bin COMPONENT "Datagram Dump")
  install(PROGRAMS ../build/bin/cidco-decoder.exe DESTINATION bin COMPONENT "Cidco Decoder")
  install(PROGRAMS ../build/bin/datagram-list.exe DESTINATION bin COMPONENT "Datagram List")
  install(PROGRAMS ../build/bin/georeference.exe DESTINATION bin COMPONENT "Georeference")
  install(PROGRAMS ../build/bin/data-cleaning.exe DESTINATION bin COMPONENT "Data Cleaning")
  install(PROGRAMS ../build/bin/pcl-viewer/viewer.exe DESTINATION "bin/PCL Viewer & Overlap" COMPONENT "PCL Viewer & Overlap")
  install(PROGRAMS ../build/bin/overlap/overlap.exe DESTINATION "bin/PCL Viewer & Overlap" COMPONENT "PCL Viewer & Overlap")
  install(FILES "C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkalglib-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkCommonColor-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkCommonComputationalGeometry-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkCommonCore-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkCommonDataModel-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkCommonExecutionModel-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkCommonMath-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkCommonMisc-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkCommonSystem-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkCommonTransforms-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkFiltersCore-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkFiltersExtraction-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkFiltersGeneral-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkFiltersGeometry-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkFiltersSources-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkFiltersStatistics-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkfreetype-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkgl2ps-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkglew-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkGUISupportQt-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkImagingCore-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkImagingFourier-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkInteractionStyle-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkpng-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkRenderingCore-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkRenderingFreeType-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkRenderingGL2PSOpenGL2-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkRenderingOpenGL2-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtksys-8.1.dll"
				"C:/Users/cidco/Library/LISPAC_gui-planesDLL/vtkzlib-8.1.dll"
				"C:/Users/cidco/Library/pclDLL/OpenNI2.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_common_release.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_features_release.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_filters_release.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_io_ply_release.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_io_release.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_kdtree_release.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_ml_release.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_octree_release.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_sample_consensus_release.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_search_release.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_segmentation_release.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_surface_release.dll"
				"C:/Users/cidco/Library/pclDLL/pcl_visualization_release.dll"
				"C:/Users/cidco/Library/runtimeDLL/msvcp140.dll"
				"C:/Users/cidco/Library/runtimeDLL/vcruntime140.dll"
				DESTINATION "bin/PCL Viewer & Overlap" COMPONENT "PCL Viewer & Overlap")
endif (WIN32)

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
  "Datagram Dump"
  "Cidco Decoder"
  "Datagram List"
  "Georeference"
  "Data Cleaning"
  "PCL Viewer & Overlap"
)
set(CPACK_ALL_INSTALL_TYPES Full Developer)

# This must always be last!
include(CPack)
