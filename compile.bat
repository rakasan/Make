%gcc src/multifile_main.c src/lib/multifile_func.c -I include -o multifile_program %
gcc -c src/multifile_main.c  -I include -o output/multifile_main.o
gcc -c src/lib/multifile_func.c -I include -o output/multifile_func.o

ld output/multifile_main.o output/multifile_func.o -o output/multifile_program_manual_link_compiler