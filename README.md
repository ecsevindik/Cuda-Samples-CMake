# Cuda-Samples-CMake
My personal study on Cuda samples. Building is simplified with CMake. Samples are taken from https://github.com/NVIDIA/cuda-samples

Some of the samples are modified to understand better.
Currently tested only on Ubuntu 20.04 with CUDA 11.6.

## Build and Run

Using VSCode with CMake extension will reveal all the executables. You can then choose and run them using the IDE.

If you prefer command line, just run the following:

```bash
mkdir build && cd build
make <targetName> # (e.g. make boxFilter) or make all, which will take a lot of time
./bin/<targetName>
```