# Works with 3.12 and tested through 3.19
cmake_minimum_required(VERSION 3.12...3.19)

# Project name and a few useful settings. Other commands can pick up the results
project(
    2-Concepts_and_Techniques
    VERSION 1.0.0
    DESCRIPTION "2-Concepts_and_Techniques section."
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

add_subdirectory(boxFilter)
add_subdirectory(convolutionSeperable)
add_subdirectory(convolutionTexture)
add_subdirectory(cuHook) # TODO: Does not work
add_subdirectory(dct8x8)
add_subdirectory(EGLStream_CUDA_CrossGPU) # TODO:
add_subdirectory(EGLStream_CUDA_Interop) # TODO:
# add_subdirectory(EGLSync_CUDAEvent_Interop) # TODO: Compile error
add_subdirectory(eigenvalues) # TODO: 
add_subdirectory(FunctionPointers)
add_subdirectory(histogram)
add_subdirectory(imageDenoising)
add_subdirectory(inlinePTX)
add_subdirectory(inlinePTX_nvrtc)
add_subdirectory(interval)
add_subdirectory(MC_EstimatePiInlineP) # TODO: MC samples need knowledge on MC
add_subdirectory(MC_EstimatePiInlineQ)
add_subdirectory(MC_EstimatePiP)
add_subdirectory(MC_EstimatePiQ)
add_subdirectory(MC_SingleAsianOptionP)
add_subdirectory(particles) # TODO: Revisit
add_subdirectory(radixSortThrust)
add_subdirectory(reduction)
add_subdirectory(reductionMultiBlockCG)
add_subdirectory(scalarProd)
add_subdirectory(scan)
add_subdirectory(segmentationTreeThrust) #TODO: Revisit
add_subdirectory(shfl_scan)
add_subdirectory(sortingNetworks)