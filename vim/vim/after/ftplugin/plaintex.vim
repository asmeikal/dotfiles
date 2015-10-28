" LaTeX

setlocal autoindent

setlocal textwidth=80
setlocal wrapmargin=0

" Mainly inspired  by:
" http://www.terminally-incoherent.com/blog/2013/06/17/using-vim-for-writing-prose/

setlocal formatoptions=t  " Format text
setlocal formatoptions+=c " Format comments
setlocal formatoptions+=w " Lines with no trailing whitespace end paragraphs
setlocal formatoptions+=a " Auto formatting
setlocal formatoptions+=n " Recognize list

" Spaces at the end of linesi are good, highlight it in a nice way
highlight ExtraWhitespace ctermbg=59

