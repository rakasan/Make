#!/bin/bash
# When creating the library the name must be lib%%, but when linking it must be l%%%
cc -c multifile_main.c -o multifile_main.o 
cc multifile_main.o -L. -lmultifile_func_dyn -o multifile_func_link_dynamic_lib