%mkdir buildresults%
gcc src/aligned_malloc.c -I include -o buildresults/aligned_malloc.o
%gcc src/malloc_freelist.c -I dependencies/lib/linkedlist -o buildresults/malloc_freelist.o%
%gcc src/posix_memalign.c -o buildresults/posix_memalign.o%
%ar rcs buildresults/libmemory.a buildresults/aligned_malloc.o buildresults/malloc_freelist.o buildresults/posix_memalign.o%

