# simpleIPC - simpleIPC

## Description

This CUDA Runtime API sample is a very basic sample that demonstrates Inter Process Communication with one process per GPU for computation.  Requires Compute Capability 3.0 or higher and a Linux Operating System, or a Windows Operating System.

## Key Concepts

CUDA Systems Integration, Peer to Peer, InterProcess Communication

### cuda IPC functions

    * https://docs.nvidia.com/cuda/cuda-runtime-api/group__CUDART__DEVICE.html#group__CUDART__DEVICE_1g96302370e5c325b212378b04a536ac26

    __host__ ​cudaError_t cudaIpcCloseMemHandle ( void* devPtr )
        Attempts to close memory mapped with cudaIpcOpenMemHandle.

    __host__ ​cudaError_t cudaIpcGetEventHandle ( cudaIpcEventHandle_t* handle, cudaEvent_t event )
        Gets an interprocess handle for a previously allocated event.

    __host__ ​cudaError_t cudaIpcGetMemHandle ( cudaIpcMemHandle_t* handle, void* devPtr )
        Gets an interprocess memory handle for an existing device memory allocation.

    __host__ ​cudaError_t cudaIpcOpenEventHandle ( cudaEvent_t* event, cudaIpcEventHandle_t handle )
        Opens an interprocess event handle for use in the current process.

    __host__ ​cudaError_t cudaIpcOpenMemHandle ( void** devPtr, cudaIpcMemHandle_t handle, unsigned int  flags )
        Opens an interprocess memory handle exported from another process and returns a device pointer usable in the local process. 