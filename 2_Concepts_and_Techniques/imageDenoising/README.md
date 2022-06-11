# imageDenoising - Image denoising

## Description

This sample demonstrates two adaptive image denoising techniques: KNN and NLM, based on computation of both geometric and color distance between texels. While both techniques are implemented in the DirectX SDK using shaders, massively speeded up variation of the latter technique, taking advantage of shared memory, is implemented in addition to DirectX counterparts.

## Key Concepts

Image Processing, Texture Usage

* https://github.com/NVIDIA/cuda-samples/blob/master/Samples/2_Concepts_and_Techniques/imageDenoising/doc/imageDenoising.pdf