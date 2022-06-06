# asyncAPI - asyncAPI

## Description

This sample illustrates the usage of CUDA events for both GPU timing and overlapping CPU and GPU execution. Events are inserted into a stream of CUDA calls. Since CUDA stream calls are asynchronous, the CPU can perform computations while GPU is executing (including DMA memcopies between the host and device). CPU can query CUDA events to determine whether GPU has completed tasks.

## Key Concepts

Asynchronous Data Transfers, CUDA Streams and Events, Templatized Kernel