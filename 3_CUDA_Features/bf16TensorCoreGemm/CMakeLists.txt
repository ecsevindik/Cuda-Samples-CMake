# Works with 3.12 and tested through 3.19
cmake_minimum_required(VERSION 3.12...3.19)

# Project name and a few useful settings. Other commands can pick up the results
project(
    bf16TensorCoreGemm
    VERSION 1.0.0
    DESCRIPTION "bf16TensorCoreGemm example."
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
  set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../../scripts/cmake")

  # CMAKE_MODULE_PATH is set, so include looks for modules in that directory
  include(Settings)

  setupCompilerAndLinker()
  setupExternalLibraries()
  
  # Let's ensure -std=c++xx instead of -std=g++xx
  set(CMAKE_CXX_EXTENSIONS OFF)

  # Let's nicely support folders in IDEs
  set_property(GLOBAL PROPERTY USE_FOLDERS ON)

endif()

# Set up external libraries if it is not set from parent project
if(NOT CUDA_FOUND)
  setupExternalLibraries()
endif()

if (CMAKE_BUILD_TYPE MATCHES DEBUG OR CMAKE_BUILD_TYPE MATCHES Debug OR CMAKE_BUILD_TYPE MATCHES debug)
        # --debug & --device-debug enable debug mode for the cuda host & device code
        set(CUDA_NVCC_FLAGS; -std=c++17; --debug; --device-debug; 
                                              -gencode arch=compute_80,code=sm_80;
                                              -gencode arch=compute_86,code=sm_86;
        )
      else()
        set(CUDA_NVCC_FLAGS; -std=c++17; -O3;
                                              -gencode arch=compute_80,code=sm_80;
                                              -gencode arch=compute_86,code=sm_86;
        )
      endif()

set(Common_dir ../../Common)

file( GLOB_RECURSE SOURCEFILES
        ./*.cpp
        ./*.cu
        )

cuda_add_executable( ${PROJECT_NAME}
    ${SOURCEFILES}
    )

target_include_directories(${PROJECT_NAME} PUBLIC
  ${Common_dir}
  )