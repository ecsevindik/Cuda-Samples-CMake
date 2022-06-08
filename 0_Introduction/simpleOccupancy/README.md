# simpleOccupancy - simpleOccupancy

## Description

This sample demonstrates the basic usage of the CUDA occupancy calculator and occupancy-based launch configurator APIs by launching a kernel with the launch configurator, and measures the utilization difference against a manually configured launch.

## Key Concepts

Occupancy Calculator

### cudaOccupancyMaxPotentialBlockSize

    template < class T >
    __host__ ​cudaError_t cudaOccupancyMaxPotentialBlockSize ( int* minGridSize, int* blockSize, T func, size_t dynamicSMemSize = 0, int  blockSizeLimit = 0 ) [inline]
    
    Returns grid and block size that achieves maximum potential occupancy for a device function.
    Parameters

    minGridSize
        - Returned minimum grid size needed to achieve the best potential occupancy 
    blockSize
        - Returned block size 
    func
        - Device function symbol 
    dynamicSMemSize
        - Per-block dynamic shared memory usage intended, in bytes 
    blockSizeLimit
        - The maximum block size func is designed to work with. 0 means no limit. 

### cudaOccupancyMaxActiveBlocksPerMultiprocessor

    template < class T >
    __host__ ​cudaError_t cudaOccupancyMaxActiveBlocksPerMultiprocessor ( int* numBlocks, T func, int  blockSize, size_t dynamicSMemSize ) [inline]

    Returns occupancy for a device function.
    Parameters

    numBlocks
        - Returned occupancy 
    func
        - Kernel function for which occupancy is calulated 
    blockSize
        - Block size the kernel is intended to be launched with 
    dynamicSMemSize
        - Per-block dynamic shared memory usage intended, in bytes

