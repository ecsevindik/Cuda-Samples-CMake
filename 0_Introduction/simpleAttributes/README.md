# simpleAttributes - simpleAttributes

## Description

This CUDA Runtime API sample is a very basic example that implements how to use the stream attributes that affect L2 locality. Performance improvement due to use of L2 access policy window can only be noticed on Compute capability 8.0 or higher.

## Key Concepts

Attributes usage on stream


### cudaAccessPolicyWindow

    Specifies an access policy for a window, a contiguous extent of memory beginning at base_ptr and ending at base_ptr + num_bytes. Partition into many segments and assign segments such that. sum of "hit segments" / window == approx. ratio. sum of "miss segments" / window == approx 1-ratio. Segments and ratio specifications are fitted to the capabilities of the architecture. Accesses in a hit segment apply the hitProp access policy. Accesses in a miss segment apply the missProp access policy.
    
    Public Variables

    void * base_ptr
    enumcudaAccessProperty hitProp
    float  hitRatio
    enumcudaAccessProperty missProp
    size_t  num_bytes


    Variables

    void * cudaAccessPolicyWindow::base_ptr [inherited]

        Starting address of the access policy window. CUDA driver may align it.
    enumcudaAccessPropertycudaAccessPolicyWindow::hitProp [inherited]

        CUaccessProperty set for hit.
    float cudaAccessPolicyWindow::hitRatio [inherited]

        hitRatio specifies percentage of lines assigned hitProp, rest are assigned missProp.
    enumcudaAccessPropertycudaAccessPolicyWindow::missProp [inherited]

        CUaccessProperty set for miss. Must be either NORMAL or STREAMING.
    size_t cudaAccessPolicyWindow::num_bytes [inherited]

        Size in bytes of the window policy. CUDA driver may restrict the maximum size and alignment.

### enum cudaAccessProperty

    Specifies performance hint with cudaAccessPolicyWindow for hitProp and missProp members.
    
    Values

    cudaAccessPropertyNormal = 0
        Normal cache persistence. 
    cudaAccessPropertyStreaming = 1
        Streaming access is less likely to persit from cache. 
    cudaAccessPropertyPersisting = 2
        Persisting access is more likely to persist in cache. 


### __host__ ​cudaError_t cudaCtxResetPersistingL2Cache ( void )

    Resets all persisting lines in cache to normal status.
    
    Returns
    cudaSuccess,

    Description
    Resets all persisting lines in cache to normal status. Takes effect on function return.

    Note:
    Note that this function may also return error codes from previous, asynchronous launches.


## Check
    * __host__ cudaError_t cudaDeviceSetLimit(cudaLimit limit, size_t value) : https://docs.nvidia.com/cuda/cuda-runtime-api/group__CUDART__DEVICE.html#group__CUDART__DEVICE_1g05956f16eaa47ef3a4efee84563ccb7d
    