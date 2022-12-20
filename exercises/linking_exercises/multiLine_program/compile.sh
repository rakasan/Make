#!/bin/bash

#1. Create the object files
cc -c main_app.c -o main_app.o
cc -c age.c -o age.o
#cc -c name.c -o name.o

#2. Using the compiler to transform the object files into an executable
cc main_app.o age.o name.o -o run_app

#3 -linking with the linker is problematic
#4. Creating a static library
ar rsc libage.a age.o

#5.Create a shared library
#cc -shared name.c -o libname_dyn.so
cc -fPIC -c name.c -o name_pic.o 
cc -shared name_pic.o -o libname_dyn.so

#Creating the final app
#cc main_app.o name.o -L. -lage -o run_app_static

#Creating the final app with shared library
cc main_app.o age.o -L. -lname_dyn -o run_app_shared_static