This is test repository for make build system

cross-compilation - build on one system in order to use on another system

-I flag tells the compiler to add an include directory to the search list

debug using lldb or gdb

Compilation command 
1 : gcc standalone_program.c
2 : gcc standalone_program.c -o standalone_program
3 : gcc multifile_main.c multifile_func.c -o multi_program
4 : gcc src/multifile_main.c src/lib/multifile_func.c -I include -o multifile_program
5 : gcc -c standalone_program.c

Linker :
 Static libraries - a set of object files that are copied into a single file
 Shared libraries

 ld 
 -Map - generate the linker map

 archiever(ar)

ar rcs library_name.a object1.o object2.o 
ar - arhiver program 
r - flag for inserting symbols
c - flag for creating a new arhive 
s - flag for writing an index