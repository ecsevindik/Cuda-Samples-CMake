# UnifiedMemoryStreams - Unified Memory Streams

## Description

This sample demonstrates the use of OpenMP and streams with Unified Memory on a single GPU.

## Key Concepts

CUDA Systems Integration, OpenMP, CUBLAS, Multithreading, Unified Memory, CUDA Streams and Events

* cudaStreamAttachMemAsync = https://docs.nvidia.com/cuda/cuda-runtime-api/group__CUDART__STREAM.html#group__CUDART__STREAM_1gc3bb7ccb325219073183a629d7c2756a

* cublas<t>gemv() =  https://docs.nvidia.com/cuda/cublas/index.html#cublas-lt-t-gt-gemv

* #define cudaMemAttachGlobal 0x01
    Memory can be accessed by any stream on any device

* #define cudaMemAttachHost 0x02
    Memory cannot be accessed by any stream on any device

* #define cudaMemAttachSingle 0x04
    Memory can only be accessed by a single stream on the associated device
