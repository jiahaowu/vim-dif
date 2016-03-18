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
syn keyword aifModel       bdf cfdf csdf dif ildf mdsdf psdf sdf <- -> :
syn keyword aifConstant    true false null

syn keyword aifTodo contained TODO FIXME XXX NOTE
syn region  aifComment start="/\*" end="\*/" contains=aifTodo
syn match   aifComment "//.*" contains=aifTodo
syn match   aifValue "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\([eE][0-9_]*\|\)\>"
syn match   aifValue "\[.\{-}\]"
syn region  aifString start=+"+ skip=+\\"+ end=+"+


let b:current_syntax = "aif"
" The default highlighting.
hi def link aifTodo     Todo
hi def link aifString     String
hi def link aifComment        Comment
hi def link aifConstant       Constant
hi def link aifValue      Number
hi def link aifStatement      Statement
hi def link aifModel      Statement

