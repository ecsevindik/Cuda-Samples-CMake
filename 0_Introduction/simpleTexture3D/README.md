# simpleTexture3D - Simple Texture 3D

## Description

Simple example that demonstrates use of 3D Textures in CUDA.

## Key Concepts

Graphics Interop, Image Processing, 3D Textures, Surface Writes

### __umul24
    __device__ ​ unsigned int __umul24 ( unsigned int  x, unsigned int  y )
    Calculate the least significant 32 bits of the product of the least significant 24 bits of two unsigned integers.
    Returns

    Returns the least significant 32 bits of the product x * y.
    Description

    Calculate the least significant 32 bits of the product of the least significant 24 bits of x and y. The high order 8 bits of x and y are ignored. 