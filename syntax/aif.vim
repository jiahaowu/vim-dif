" Vim syntax file
" Language: AIF
" Author: Jiahao Wu
" Last Verision: 03/16/2016

if exists("b:current_syntax") 
    finish
endif

" AIF keywords
syn keyword aifStatement   graph interface topology 
syn keyword aifStatement   actor inputs outputs nodes edges 
syn keyword aifModel       bdf cfdf csdf dif ildf mdsdf psdf sdf
syn keyword aifConstant    true false null

syn region  aifComment start="/\*" end="\*/"
syn match   aifComment "//.*"
syn match   aifValue "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\([eE][0-9_]*\|\)\>"
syn match   aifValue "\[.\{-}\]"
syn region  aifString start=+"+ skip=+\\"+ end=+"+


" The default highlighting.
HiLink aifString     String
HiLink aifComment        Comment
HiLink aifConstant       Constant
HiLink aifValue      Number
HiLink aifStatement      Statement
HiLink aifModel      Statement

delcommand HiLink

let b:current_syntax = "aif"
