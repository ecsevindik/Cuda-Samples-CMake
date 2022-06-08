# simpleTemplates - Simple Templates

## Description

This sample is a templatized version of the template project. It also shows how to correctly templatize dynamically allocated shared memory arrays.

## Key Concepts

C++ Templates

Because dynamically sized shared memory arrays are declared "extern",
we can't templatize them directly.  To get around this, we declare a
simple wrapper struct that will declare the extern array with a different
name depending on the type.  This avoids compiler errors about duplicate
definitions.