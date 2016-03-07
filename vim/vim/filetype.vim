" File type detection {{{
" LaTeX class files
au BufNewFile,BufRead *.cls setlocal filetype=tex

" All bash files
au BufNewFile,BufRead .bash_*,bash_* setlocal filetype=sh

" OpenCL files
au BufNewFile,BufRead *.cl setlocal filetype=opencl

" Modelica files
au BufNewFile,BufRead *.mo setlocal filetype=modelica

" AMPL files
au BufNewFile,BufRead *.mod setlocal filetype=ampl
" }}}


