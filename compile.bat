%gcc src/multifile_main.c src/lib/multifile_func.c -I include -o multifile_program %

% Compile and link multiple files %
gcc -c src/multifile_main.c  -I include -o output/multifile_main.o
gcc -c src/lib/multifile_func.c -I include -o output/multifile_func.o

%ld output/multifile_main.o output/multifile_func.o -o output/multifile_program_manual_link_compiler %

% Solution 1 :% %Linking with the compiler %

gcc output/multifile_func.o output/multifile_main.o -o output/multifile_program_manual_link_compiler