# cudaTensorCoreGemm - CUDA Tensor Core GEMM

## Description

CUDA sample demonstrating a GEMM computation using the Warp Matrix Multiply and Accumulate (WMMA) API introduced in CUDA 9.

This sample demonstrates the use of the new CUDA WMMA API employing the Tensor Cores introduced in the Volta chip family for faster matrix operations.

In addition to that, it demonstrates the use of the new CUDA function attribute cudaFuncAttributeMaxDynamicSharedMemorySize that allows the application to reserve an extended amount of shared memory than it is available by default.

## Key Concepts

Matrix Multiply, WMMA, Tensor Cores
