# tf32TensorCoreGemm - tf32 Tensor Core GEMM

## Description

A CUDA sample demonstrating tf32 (e8m10) GEMM computation using the Warp Matrix Multiply and Accumulate (WMMA) API introduced with CUDA 11 in Ampere chip family tensor cores for faster matrix operations. This sample also uses async copy provided by cuda pipeline interface for gmem to shmem async loads which improves kernel performance and reduces register presssure.

## Key Concepts

Matrix Multiply, WMMA, Tensor Cores
