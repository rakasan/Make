%Compile the code into an object file  %
gcc src/single_file.c -o output/single_file.o

% Use the linker to transform into an executable %
ld output/single_file.o -o output/single_file_linker

%Compile the code into a executable file %
gcc src/single_file.c -o output/single_file

