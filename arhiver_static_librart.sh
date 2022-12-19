#!/bin/bash

#script used to create a static library
#ar - archiver program
#ar rsc library_name.a object1.o, object2.o ....

#generate the object file 
cc -c multifile_func.c -o multifile_func.o 

#create the library
ar rcs libmultifile_func.a multifile_func.o

#generate the object file from the main 
cc -c multifile_main.c -o multifile_main.o

#link the object file to the library
#added -L. for signalizing that the library is in the same folder
cc multifile_main.o -L. -lmultifile_func -o multifile_func_link_static_lib