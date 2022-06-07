# simpleAtomicIntrinsics - Simple Atomic Intrinsics

## Description

A simple demonstration of global memory atomic instructions.

## Key Concepts

Atomic Intrinsics

### atomicAdd()

    int atomicAdd(int* address, int val);
    unsigned int atomicAdd(unsigned int* address,
                        unsigned int val);
    unsigned long long int atomicAdd(unsigned long long int* address,
                                    unsigned long long int val);
    float atomicAdd(float* address, float val);
    double atomicAdd(double* address, double val);
    __half2 atomicAdd(__half2 *address, __half2 val);
    __half atomicAdd(__half *address, __half val);
    __nv_bfloat162 atomicAdd(__nv_bfloat162 *address, __nv_bfloat162 val);
    __nv_bfloat16 atomicAdd(__nv_bfloat16 *address, __nv_bfloat16 val);

    reads the 16-bit, 32-bit or 64-bit word old located at the address address in global or shared memory, computes (old + val), and stores the result back to memory at the same address. These three operations are performed in one atomic transaction. The function returns old. 

### atomicSub()

    int atomicSub(int* address, int val);
    unsigned int atomicSub(unsigned int* address,
                        unsigned int val);

    reads the 32-bit word old located at the address address in global or shared memory, computes (old - val), and stores the result back to memory at the same address. These three operations are performed in one atomic transaction. The function returns old.

### atomicExch()

    int atomicExch(int* address, int val);
    unsigned int atomicExch(unsigned int* address,
                            unsigned int val);
    unsigned long long int atomicExch(unsigned long long int* address,
                                    unsigned long long int val);
    float atomicExch(float* address, float val);

    reads the 32-bit or 64-bit word old located at the address address in global or shared memory and stores val back to memory at the same address. These two operations are performed in one atomic transaction. The function returns old.


### atomicMax()

    int atomicMax(int* address, int val);
    unsigned int atomicMax(unsigned int* address,
                        unsigned int val);
    unsigned long long int atomicMax(unsigned long long int* address,
                                    unsigned long long int val);
    long long int atomicMax(long long int* address,
                                    long long int val);

    reads the 32-bit or 64-bit word old located at the address address in global or shared memory, computes the maximum of old and val, and stores the result back to memory at the same address. These three operations are performed in one atomic transaction. The function returns old.

    The 64-bit version of atomicMax() is only supported by devices of compute capability 3.5 and higher.


### atomicMin()

    int atomicMin(int* address, int val);
    unsigned int atomicMin(unsigned int* address,
                        unsigned int val);
    unsigned long long int atomicMin(unsigned long long int* address,
                                    unsigned long long int val);
    long long int atomicMin(long long int* address,
                                    long long int val);

    reads the 32-bit or 64-bit word old located at the address address in global or shared memory, computes the minimum of old and val, and stores the result back to memory at the same address. These three operations are performed in one atomic transaction. The function returns old.

    The 64-bit version of atomicMin() is only supported by devices of compute capability 3.5 and higher.


### atomicInc()

    unsigned int atomicInc(unsigned int* address,
                        unsigned int val);

    reads the 32-bit word old located at the address address in global or shared memory, computes ((old >= val) ? 0 : (old+1)), and stores the result back to memory at the same address. These three operations are performed in one atomic transaction. The function returns old.

### atomicDec()

    unsigned int atomicDec(unsigned int* address,
                        unsigned int val);

    reads the 32-bit word old located at the address address in global or shared memory, computes (((old == 0) || (old > val)) ? val : (old-1) ), and stores the result back to memory at the same address. These three operations are performed in one atomic transaction. The function returns old.


### atomicCAS()

    int atomicCAS(int* address, int compare, int val);
    unsigned int atomicCAS(unsigned int* address,
                        unsigned int compare,
                        unsigned int val);
    unsigned long long int atomicCAS(unsigned long long int* address,
                                    unsigned long long int compare,
                                    unsigned long long int val);
    unsigned short int atomicCAS(unsigned short int *address, 
                                unsigned short int compare, 
                                unsigned short int val);

    reads the 16-bit, 32-bit or 64-bit word old located at the address address in global or shared memory, computes (old == compare ? val : old) , and stores the result back to memory at the same address. These three operations are performed in one atomic transaction. The function returns old (Compare And Swap).


### atomicAnd()

    int atomicAnd(int* address, int val);
    unsigned int atomicAnd(unsigned int* address,
                        unsigned int val);
    unsigned long long int atomicAnd(unsigned long long int* address,
                                    unsigned long long int val);

    reads the 32-bit or 64-bit word old located at the address address in global or shared memory, computes (old & val), and stores the result back to memory at the same address. These three operations are performed in one atomic transaction. The function returns old.

    The 64-bit version of atomicAnd() is only supported by devices of compute capability 3.5 and higher.

### atomicOr()

    int atomicOr(int* address, int val);
    unsigned int atomicOr(unsigned int* address,
                        unsigned int val);
    unsigned long long int atomicOr(unsigned long long int* address,
                                    unsigned long long int val);

    reads the 32-bit or 64-bit word old located at the address address in global or shared memory, computes (old | val), and stores the result back to memory at the same address. These three operations are performed in one atomic transaction. The function returns old.

    The 64-bit version of atomicOr() is only supported by devices of compute capability 3.5 and higher.

### atomicXor()

    int atomicXor(int* address, int val);
    unsigned int atomicXor(unsigned int* address,
                        unsigned int val);
    unsigned long long int atomicXor(unsigned long long int* address,
                                    unsigned long long int val);

    reads the 32-bit or 64-bit word old located at the address address in global or shared memory, computes (old ^ val), and stores the result back to memory at the same address. These three operations are performed in one atomic transaction. The function returns old.

    The 64-bit version of atomicXor() is only supported by devices of compute capability 3.5 and higher.
