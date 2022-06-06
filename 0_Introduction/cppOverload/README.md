# cppOverload - cppOverload

## Description

This sample demonstrates how to use C++ function overloading on the GPU.

## Key Concepts

C++ Function Overloading, CUDA Streams and Events

### cudaFuncSetCacheConfig
__host__ ​cudaError_t cudaFuncSetCacheConfig ( const void* func, cudaFuncCache cacheConfig )
    Sets the preferred cache configuration for a device function.
    Parameters

    func
        - Device function symbol 
    cacheConfig
        - Requested cache configuration

    Returns

    cudaSuccess, cudaErrorInvalidDeviceFunction


### enum cudaFuncCache

    CUDA function cache configurations
    Values

    cudaFuncCachePreferNone = 0
        Default function cache configuration, no preference 
    cudaFuncCachePreferShared = 1
        Prefer larger shared memory and smaller L1 cache 
    cudaFuncCachePreferL1 = 2
        Prefer larger L1 cache and smaller shared memory 
    cudaFuncCachePreferEqual = 3
        Prefer equal size L1 cache and shared memory 

