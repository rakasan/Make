#!/bin/bash

#1.Compile the code into an object file
cc -c single_test.c -o single_test.o

#2 Use the compiler to transform the object file into an executable
#cc single_test.o -o single_test

#3Use the linker to transform the object file into an executable
ld single_test.o -lc -o single_test_manual_link 
#linking failed due to high complexity