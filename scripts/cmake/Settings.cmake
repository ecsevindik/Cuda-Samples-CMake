# Defines the compiler/linker flags used to build our project.
macro(setupCompilerAndLinker)

  # -fPIC is in g++ and clang++ by default, but for NVCC separate compilation so we have to explicitly add it
  if (CMAKE_COMPILER_IS_GNUCXX)
    if (NOT CMAKE_CXX_FLAGS MATCHES "std")
      if (CMAKE_BUILD_TYPE MATCHES Debug)
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -O0 -Wall -Wuninitialized -fPIC -fPIE") # -Werror
      else()
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -mavx2 -mxsave -mxsavec -mxsaves -O3 -Wall -Wuninitialized -fPIC -fPIE") # -Werror
      endif()
    endif()

  elseif (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    if (NOT CMAKE_CXX_FLAGS MATCHES "std")
      if (CMAKE_BUILD_TYPE MATCHES Debug)
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -O0 -Wall -Wuninitialized -Werror -fPIC")
      else()
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -mavx2 -mxsave -mxsavec -mxsaves -O3 -Wall -Wuninitialized -Werror -fPIC")
      endif()
    endif()
  endif()

  if (NOT CUDA_NVCC_FLAGS MATCHES "targets")
    #set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS} -Wno-deprecated-gpu-targets --generate-line-info --expt-extended-lambda --expt-relaxed-constexpr --default-stream per-thread --ftz=false --prec-div=true --prec-sqrt=true --fmad=true)
    if (UNIX)
      if (CMAKE_BUILD_TYPE MATCHES DEBUG OR CMAKE_BUILD_TYPE MATCHES Debug OR CMAKE_BUILD_TYPE MATCHES debug)
        # --debug & --device-debug enable debug mode for the cuda host & device code
        set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS}; -std=c++17; --debug; --device-debug; 
                                              -gencode arch=compute_60,code=sm_60;
                                              -gencode arch=compute_70,code=sm_70;
                                              -gencode arch=compute_75,code=sm_75;
                                              -gencode arch=compute_80,code=sm_80;
                                              -gencode arch=compute_86,code=sm_86;
        )
      else()
        set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS}; -std=c++17; -O3;
                                              -gencode arch=compute_60,code=sm_60;
                                              -gencode arch=compute_70,code=sm_70;
                                              -gencode arch=compute_75,code=sm_75
                                              -gencode arch=compute_80,code=sm_80;
                                              -gencode arch=compute_86,code=sm_86;
      )
      endif()
    endif()
   
  endif()
endmacro(setupCompilerAndLinker)

macro(setupExternalLibraries)

  # Find Threads package
  find_package(Threads REQUIRED)
  if (NOT Threads_FOUND)
    message(FATAL_ERROR "Threads not found. This can not be built.")
  endif()

  # Find CUDA package
  find_package(CUDA REQUIRED)
  if (NOT CUDA_FOUND)
    message(FATAL_ERROR "CUDA not found. This can not be built.")
  endif()

endmacro(setupExternalLibraries)