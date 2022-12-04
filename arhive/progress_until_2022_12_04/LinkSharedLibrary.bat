%gcc -fPIC -c src/include/multifile_func.c -o output/multifile_func_pic.o %
%gcc -shared output/multifile_func_pic.o -o output/libmultifile_func_dyn.dll%

gcc -shared src/lib/multifile_func.c -I include -o output/libmultifile_func_dyn.dll
gcc -c src/multifile_main.c -I include -o output/multifile_main.o
gcc output/multifile_main.o -L. output/libmultifile_func_dyn -o multifile_func_link_dynamic_lib
%export LD_LIBRARY_PATH = ./output .output/multifile_func_link_dynamic_lib%