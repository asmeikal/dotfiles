" File type detection {{{
" LaTeX class files
au BufNewFile,BufRead *.cls setlocal filetype=tex

" All bash and zsh files
au BufNewFile,BufRead .bash_*,bash_* setlocal filetype=sh
au BufNewFile,BufRead zprofile setlocal filetype=zsh

" OpenCL files
au BufNewFile,BufRead *.cl setlocal filetype=opencl

" Modelica files
au BufNewFile,BufRead *.mo setlocal filetype=modelica

" AMPL files
au BufNewFile,BufRead *.mod,*.run,*.dat setlocal filetype=ampl
" }}}


