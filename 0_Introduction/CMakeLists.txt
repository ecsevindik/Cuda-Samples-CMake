# Works with 3.12 and tested through 3.19
cmake_minimum_required(VERSION 3.12...3.19)

# Project name and a few useful settings. Other commands can pick up the results
project(
    0_Introduction
    VERSION 1.0.0
    DESCRIPTION "Introduction section."
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

add_subdirectory(asyncAPI)
add_subdirectory(c++11_cuda)
add_subdirectory(clock)
add_subdirectory(clock_nvrtc)
add_subdirectory(concurrentKernels)
add_subdirectory(cppIntegration)
add_subdirectory(cppOverload)
add_subdirectory(cudaOpenMP)
add_subdirectory(fp16ScalarProduct)
add_subdirectory(matrixMul)
add_subdirectory(matrixMul_nvrtc)
add_subdirectory(matrixMulDrv)
# add_subdirectory(matrixMulDynLinkJIT) # TODO:
add_subdirectory(mergeSort)
add_subdirectory(simpleAssert)
add_subdirectory(simpleAssert_nvrtc)
add_subdirectory(simpleAtomicIntrinsics)
add_subdirectory(simpleAtomicIntrinsics_nvrtc)
add_subdirectory(simpleAttributes)
add_subdirectory(simpleAWBarrier)
add_subdirectory(simpleCallback)
add_subdirectory(simpleCooperativeGroups)
add_subdirectory(simpleCubemapTexture) # TODO:
add_subdirectory(simpleCUDA2GL) # TODO:
add_subdirectory(simpleDrvRuntime)
add_subdirectory(simpleHyperQ)
add_subdirectory(simpleIPC)
add_subdirectory(simpleLayeredTexture)
add_subdirectory(simplePitchLinearTexture)
add_subdirectory(simpleMPI)
add_subdirectory(simpleMultiCopy)
add_subdirectory(simpleMultiGPU)
add_subdirectory(simpleOccupancy)
add_subdirectory(simpleP2P)
add_subdirectory(simplePrintf)
add_subdirectory(simpleSeparateCompilation)
add_subdirectory(simpleStreams)
add_subdirectory(simpleSurfaceWrite)
add_subdirectory(simpleTemplates)
add_subdirectory(simpleTemplates_nvrtc)
add_subdirectory(simpleTexture)
add_subdirectory(simpleTexture3D) # TODO: Includes OpenGL, check again
add_subdirectory(simpleTextureDrv)
add_subdirectory(simpleVoteIntrinsics)
add_subdirectory(simpleVoteIntrinsics_nvrtc)
add_subdirectory(simpleZeroCopy)
add_subdirectory(systemWideAtomics)
add_subdirectory(template)
add_subdirectory(UnifiedMemoryStreams)
add_subdirectory(vectorAdd)
add_subdirectory(vectorAdd_nvrtc)
add_subdirectory(vectorAddDrv)
add_subdirectory(vectorAddMMAP)
