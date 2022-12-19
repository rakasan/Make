#!/bin/bash

#Create object files
cc -c src/lib/multifile_func.c -I include -o output/object/multifile_func.o
cc -c src/multifile_main.c -I include -o output/object/multifile_main.o

#link them into a binary
# adding linker flags using -Xlinker for generating the map
cc output/object/multifile_func.o output/object/multifile_main.o -Xlinker -Map -Xlinker test.map -o output/multifile_manual_link_compiler
#adding linker flags using -Wl
#cc output/object/multifile_func.o output/object/multifile_main.o -Wl,-Map,test.map -o output/multifile_manual_link_compiler