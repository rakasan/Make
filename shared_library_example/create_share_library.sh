#!/bin/bash

# for creating a shared library the -FPIC is required
#cc -fPIC -c multifile_func.c -o multifile_func_pic.o 
#cc -shared multifile_func_pic.o -o libmultifile_func_dyn.so

#single line, same result, but using the compiler
cc -shared multifile_func.c -o libmultifile_func_dyn.so
