" File type detection {{{
" LaTeX class files
au BufNewFile,BufRead *.cls setlocal filetype=tex

" All bash files
au BufNewFile,BufRead .bash_*,bash_* setlocal filetype=sh

" OpenCL files
au BufNewFile,BufRead *.cl setlocal filetype=opencl
" }}}


