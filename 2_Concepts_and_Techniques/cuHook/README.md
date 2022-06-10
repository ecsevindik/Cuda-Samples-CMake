# cuHook - CUDA Interception Library

## Description

This sample demonstrates how to build and use an intercept library with CUDA. The library has to be loaded via LD_PRELOAD, e.g. LD_PRELOAD=<full_path>/libcuhook.so.1 ./cuHook

NOTE: Sample will be waived if the glibc version >= 2.34, as the sample was using these private glibc functions `__libc_dlsym()`, `__libc_dlopen_mode()` which are not exposed in 2.34 version.

## Key Concepts

Debugging
