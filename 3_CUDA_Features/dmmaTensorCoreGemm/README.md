# dmmaTensorCoreGemm - Double Precision Tensor Core GEMM

## Description

CUDA sample demonstrates double precision GEMM computation using the Double precision Warp Matrix Multiply and Accumulate (WMMA) API introduced with CUDA 11 in Ampere chip family tensor cores for faster matrix operations. This sample also uses async copy provided by cuda pipeline interface for gmem to shmem async loads which improves kernel performance and reduces register presssure. Further, this sample also demonstrates how to use cooperative groups async copy interface over a group for performing gmem to shmem async loads.

## Key Concepts

Matrix Multiply, WMMA, Tensor Cores
