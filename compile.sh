#!/bin/bash

#cc standalone_program.c -o output/standalone_program # single file compilation
#cc multifile_main.c multifile_func.c -o output/multifile_program

#Command to compile files that are distrubuted over several locations
#Added the -I for signalizing where the include folder is 
#added -Oz for debugging experience
#added the -std=c99, for setting the standard
# in order to use a linker script, a -T argument needs to be used

cc src/multifile_main.c src/lib/multifile_func.c -I include -std=c99 -Og -o output/multifile_program_distributed
