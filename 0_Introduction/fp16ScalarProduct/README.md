# fp16ScalarProduct - FP16 Scalar Product

## Description

Calculates scalar product of two vectors of FP16 numbers.

## Key Concepts

CUDA Runtime API

### __float2half2_rn

__host__ ​ __device__ ​ __half2 __float2half2_rn ( const float  a )
    Converts input to half precision in round-to-nearest-even mode and populates both halves of half2 with converted value. 

### __hadd2

__device__ ​ __half2 __hadd2 ( const __half2 a, const __half2 b )
    Performs half2 vector addition in round-to-nearest-even mode.
    Description

    Performs half2 vector add of inputs a and b, in round-to-nearest mode.

### __hfma2

__device__ ​ __half2 __hfma2 ( const __half2 a, const __half2 b, const __half2 c )
    Performs half2 vector fused multiply-add in round-to-nearest-even mode.
    Description

    Performs half2 vector multiply on inputs a and b, then performs a half2 vector add of the result with c, rounding the result once in round-to-nearest-even mode.

### __low2float

__host__ ​ __device__ ​ float __low2float ( const __half2 a )
    Converts low 16 bits of half2 to float and returns the result.
    Parameters

    a
        - half2. Is only being read.

    Returns

    float

        The low 16 bits of a converted to float.

    Description

    Converts low 16 bits of half2 input a to 32-bit floating-point number and returns the result.

### __high2float

__host__ ​ __device__ ​ float __high2float ( const __half2 a )
    Converts high 16 bits of half2 to float and returns the result.
    Parameters

    a
        - half2. Is only being read.

    Returns

    float

        The high 16 bits of a converted to float.

    Description

    Converts high 16 bits of half2 input a to 32-bit floating-point number and returns the result. 