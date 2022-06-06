# matrixMul - Matrix Multiplication (CUDA Runtime API Version)

## Description

This sample implements matrix multiplication and is exactly the same as Chapter 6 of the programming guide. It has been written for clarity of exposition to illustrate various CUDA programming principles, not with the goal of providing the most performant generic kernel for matrix multiplication.  To illustrate GPU performance for matrix multiply, this sample also shows how to use the new CUDA 4.0 interface for CUBLAS to demonstrate high-performance performance for matrix multiplication.

## Key Concepts

CUDA Runtime API, Linear Algebra

### cudaStreamCreateWithFlags

__host__ ​ __device__ ​cudaError_t cudaStreamCreateWithFlags ( cudaStream_t* pStream, unsigned int  flags )
    Create an asynchronous stream.
    Parameters

    pStream
        - Pointer to new stream identifier 
    flags
        - Parameters for stream creation

    Returns

    cudaSuccess, cudaErrorInvalidValue
    Description

    Creates a new asynchronous stream. The flags argument determines the behaviors of the stream. Valid values for flags are

        cudaStreamDefault: Default stream creation flag.

        cudaStreamNonBlocking: Specifies that work running in the created stream may run concurrently with work in stream 0 (the NULL stream), and that the created stream should perform no implicit synchronization with stream 0.

    Note:

        Note that this function may also return error codes from previous, asynchronous launches.

        Note that this function may also return cudaErrorInitializationError, cudaErrorInsufficientDriver or cudaErrorNoDevice if this call tries to initialize internal CUDA RT state.

        Note that as specified by cudaStreamAddCallback no CUDA function may be called from callback. cudaErrorNotPermitted may, but is not guaranteed to, be returned as a diagnostic in such case.

