# simpleAWBarrier - Simple Arrive Wait Barrier

## Description

A simple demonstration of arrive wait barriers.

## Key Concepts

Arrive Wait Barrier

### Warp Level Primitives - Blog
    * https://developer.nvidia.com/blog/using-cuda-warp-level-primitives/

### Bootstrap Initialization, Expected Arrival Count, and Participation
    * https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#bootstrap_init_expected_arrive_count

### Thread Block Tile - Public Member Functions
    * https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#thread-block-tile-group-cg

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

    Returns

    cudaSuccess, cudaErrorInvalidDevice, cudaErrorInvalidDeviceFunction, cudaErrorInvalidValue, cudaErrorUnknown,
    Description

    Returns in *minGridSize and *blocksize a suggested grid / block size pair that achieves the best potential occupancy (i.e. the maximum number of active warps with the smallest number of blocks).

    Use

    See also:

    cudaOccupancyMaxPotentialBlockSizeVariableSMem if the amount of per-block dynamic shared memory changes with different block sizes.

    Note:

        Note that this function may also return error codes from previous, asynchronous launches.

        Note that this function may also return cudaErrorInitializationError, cudaErrorInsufficientDriver or cudaErrorNoDevice if this call tries to initialize internal CUDA RT state.

        Note that as specified by cudaStreamAddCallback no CUDA function may be called from callback. cudaErrorNotPermitted may, but is not guaranteed to, be returned as a diagnostic in such case.


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

    Returns

    cudaSuccess, cudaErrorInvalidDevice, cudaErrorInvalidDeviceFunction, cudaErrorInvalidValue, cudaErrorUnknown,
    Description

    Returns in *numBlocks the maximum number of active blocks per streaming multiprocessor for the device function.

    Note:

        Note that this function may also return error codes from previous, asynchronous launches.

        Note that this function may also return cudaErrorInitializationError, cudaErrorInsufficientDriver or cudaErrorNoDevice if this call tries to initialize internal CUDA RT state.

        Note that as specified by cudaStreamAddCallback no CUDA function may be called from callback. cudaErrorNotPermitted may, but is not guaranteed to, be returned as a diagnostic in such case.

### cudaLaunchCooperativeKernel - needed when grid synchronization required
    template < class T >
    __host__ ​cudaError_t cudaLaunchCooperativeKernel ( const T* func, dim3 gridDim, dim3 blockDim, void** args, size_t sharedMem = 0, cudaStream_t stream = 0 ) [inline]
    Launches a device function.
    Parameters

    func
        - Device function symbol 
    gridDim
        - Grid dimentions 
    blockDim
        - Block dimentions 
    args
        - Arguments 
    sharedMem
        - Shared memory (defaults to 0) 
    stream
        - Stream identifier (defaults to NULL)

    Returns

    cudaSuccess, cudaErrorInvalidDeviceFunction, cudaErrorInvalidConfiguration, cudaErrorLaunchFailure, cudaErrorLaunchTimeout, cudaErrorLaunchOutOfResources, cudaErrorSharedObjectInitFailed
    Description

    The function invokes kernel func on gridDim (gridDim.xgridDim.ygridDim.z) grid of blocks. Each block contains blockDim (blockDim.xblockDim.yblockDim.z) threads.

    The device on which this kernel is invoked must have a non-zero value for the device attribute cudaDevAttrCooperativeLaunch.

    The total number of blocks launched cannot exceed the maximum number of blocks per multiprocessor as returned by cudaOccupancyMaxActiveBlocksPerMultiprocessor (or cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags) times the number of multiprocessors as specified by the device attribute cudaDevAttrMultiProcessorCount.

    The kernel cannot make use of CUDA dynamic parallelism.

    If the kernel has N parameters the args should point to array of N pointers. Each pointer, from args[0] to args[N - 1], point to the region of memory from which the actual parameter will be copied.

    sharedMem sets the amount of dynamic shared memory that will be available to each thread block.

    stream specifies a stream the invocation is associated to.

    Note:

        Note that this function may also return error codes from previous, asynchronous launches.

        This function exhibits asynchronous behavior for most use cases.

        This function uses standard default stream semantics.

        Note that this function may also return cudaErrorInitializationError, cudaErrorInsufficientDriver or cudaErrorNoDevice if this call tries to initialize internal CUDA RT state.

        Note that as specified by cudaStreamAddCallback no CUDA function may be called from callback. cudaErrorNotPermitted may, but is not guaranteed to, be returned as a diagnostic in such case.

