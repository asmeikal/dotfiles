" Vim syntax file
" Language:		MiniZinc

syn case match

syn match minizincComment "%.*$"

highlight link minizincOperator Type
highlight link minizincComment Comment

let b:current_syntax = "minizinc"

