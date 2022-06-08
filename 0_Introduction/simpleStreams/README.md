# simpleStreams - simpleStreams

## Description

This sample uses CUDA streams to overlap kernel executions with memory copies between the host and a GPU device.  This sample uses a new CUDA 4.0 feature that supports pinning of generic host memory.  Requires Compute Capability 2.0 or higher.

## Key Concepts

Asynchronous Data Transfers, CUDA Streams and Events

* https://stackoverflow.com/questions/4822809/cuda-blocking-flags