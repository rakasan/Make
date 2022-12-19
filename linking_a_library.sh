#!/bin/bash

#Create object files
cc -c src/lib/multifile_func.c -I include -o output/object/multifile_func.o
cc -c src/multifile_main.c -I include -o output/object/multifile_main.o

#linking using a library
ld output/object/multifile_func.o output/object/multifile_main.o -lc -o output/multifile_linking_with_library