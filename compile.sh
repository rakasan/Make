#!/bin/bash

#cc standalone_program.c -o output/standalone_program # single file compilation
cc multifile_main.c multifile_func.c -o output/multifile_program