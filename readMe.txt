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

Linking object filer into a shared library


/************************************************************************/
2022.12.04 - Restart the course in order to use WSL. All the current progress will be moved in arhive

issue with installing gcc : The command sudo apt install gcc make leads to an error. In order to fix it :

sudo apt-get update && sudo apt-get update -y
sudo apt autoremove -y
sudo apt-get install gcc -y

cc - default compiler for the operating system

-o output control

in order to move a file : mv file destination
in order to remove a file : rm file

Output format flags : 
 -c compile, assamble but do not link 
 -S compile, but do not assemble
 -E stop after preprocessing
 -V show the full commands

 Linker : 
    Libraries :
         - static libraries
         - shared libraries / dynamic
         They need to be created using the format lib[name].[extension]