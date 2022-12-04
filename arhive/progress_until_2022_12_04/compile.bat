%gcc src/multifile_main.c src/lib/multifile_func.c -I include -o multifile_program %

% Compile and link multiple files %
%gcc -c src/multifile_main.c  -I include -o output/multifile_main.o%
%gcc -c src/lib/multifile_func.c -I include -o output/multifile_func.o%

%ld output/multifile_main.o output/multifile_func.o -o output/multifile_program_manual_link_compiler %

% Solution 1 :% %Linking with the compiler %

% option 1 to use Map %
% gcc output/multifile_func.o output/multifile_main.o -o output/multifile_program_manual_link_compiler -Xlinker -Map -Xlinker test.map %

%option 2 to use Map%
% gcc output/multifile_func.o output/multifile_main.o -o output/multifile_program_manual_link_compiler -Xlinker -Map=test.map %
 %option 3 to use Map%
% gcc output/multifile_func.o output/multifile_main.o -o output/multifile_program_manual_link_compiler -Wl,-Map,test.map %

%Linking using libraries - works on MacOs%

% ld output/multifile_main.o output/multifile_func.o -lc -o output/multifile_program_manual_link_compiler %


%Linking an application with a static library%
gcc -c src/multifile_main.c  -I include -o output/multifile_main.o
gcc output/multifile_main.o -L output -lmultifile_func -o multifile_func_link_static_lib