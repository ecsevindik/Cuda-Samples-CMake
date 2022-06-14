# Works with 3.12 and tested through 3.19
cmake_minimum_required(VERSION 3.12...3.19)

# Project name and a few useful settings. Other commands can pick up the results
project(
    3_CUDA_Features
    VERSION 1.0.0
    DESCRIPTION "3_CUDA_Features section."
    LANGUAGES CXX)

# Only do these if this is the main project, and not if it is included through add_subdirectory
if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)

  # Optionally set things like CMAKE_CXX_STANDARD, CMAKE_POSITION_INDEPENDENT_CODE here
  set(CMAKE_CXX_STANDARD 17)
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
  set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

  # set the module path so include can find modules
  set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../scripts/cmake")

  # CMAKE_MODULE_PATH is set, so include looks for modules in that directory
  include(Settings)

  setupCompilerAndLinker()
  setupExternalLibraries()
  
  # Let's ensure -std=c++xx instead of -std=g++xx
  set(CMAKE_CXX_EXTENSIONS OFF)

  # Let's nicely support folders in IDEs
  set_property(GLOBAL PROPERTY USE_FOLDERS ON)

endif()

add_subdirectory(bf16TensorCoreGemm)
add_subdirectory(binaryPartitionCG)
add_subdirectory(bindlessTexture)
add_subdirectory(cdpAdvancedQuicksort) # TODO:
add_subdirectory(cdpBezierTessellation) # TODO:
add_subdirectory(cdpQuadtree) # TODO:
add_subdirectory(cdpSimplePrint)
add_subdirectory(cdpSimpleQuicksort)
add_subdirectory(cudaCompressibleMemory)
add_subdirectory(cudaTensorCoreGemm)
add_subdirectory(dmmaTensorCoreGemm)
add_subdirectory(globalToShmemAsyncCopy)
add_subdirectory(graphMemoryFootprint)
add_subdirectory(graphMemoryNodes) 
add_subdirectory(immaTensorCoreGemm)
