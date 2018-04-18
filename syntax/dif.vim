" Vim syntax file
" Language: DIF
" Author:   Jiahao Wu, Chung-Ching Shen
" Last Verision: 04/2/2016

if exists("b:current_syntax") 
    finish
endif

" DIF keywords
syn keyword difStatement   production consumption delay topology actor type input output mode param 
syn keyword difStatement   attribute basedon parameter interface refinement actortype
syn keyword difStatement   inputs outputs msa nodes edges
syn keyword difModel       bdf cfdf csdf dif ildf mdsdf psdf sdf wsdf
syn keyword difConstant    true false

syn keyword difTodo contained TODO FIXME XXX NOTE
syn region  difComment start="/\*" end="\*/" contains=difTodo
syn match   difComment "//.*" contains=difTodo
syn match   difValue "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\([eE][0-9_]*\|\)\>"
syn match   difValue "\[.\{-}\]"
syn region  difString start=+"+ skip=+\\"+ end=+"+


let b:current_syntax = "dif"
" The default highlighting.
hi def link difTodo     Todo
hi def link difString     String
hi def link difComment        Comment
hi def link difConstant       Constant
hi def link difValue      Number
hi def link difStatement     Type 
hi def link difModel     Type 
hi def link difEscape     Special
