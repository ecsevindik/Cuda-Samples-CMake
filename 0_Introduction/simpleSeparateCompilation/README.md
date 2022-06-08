# simpleSeparateCompilation - Simple Static GPU Device Library

## Description

This sample demonstrates a CUDA 5.0 feature, the ability to create a GPU device static library and use it within another CUDA kernel.  This example demonstrates how to pass in a GPU device function (from the GPU device static library) as a function pointer to be called.  This sample requires devices with compute capability 2.0 or higher.

## Key Concepts

Separate Compilation

* https://cmake.org/cmake/help/latest/prop_tgt/CUDA_SEPARABLE_COMPILATION.html

* cudaMemcpyFromSymbol = http://horacio9573.no-ip.org/cuda/group__CUDART__MEMORY_g4c9806709c42dc214a4b4ad8f53c9417.html