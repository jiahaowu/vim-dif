" Vim syntax file
" Language: DIF
" Author:   Jiahao Wu, Chung-Ching Shen
" Last Verision: 04/2/2016

if exists("b:current_syntax") 
    finish
endif

" DIF keywords
syn keyword difStatement   production consumption
syn keyword difStatement   attribute baseon parameter interface refinement
syn keyword difStatement   computation
syn keyword difStatement   inputs outputs
syn keyword difModel       bdf cfdf csdf dif ildf mdsdf psdf sdf
syn keyword difConstant    true false
syn keyword difPortType     INPUT OUTPUT

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
hi def link difStatement      Statement
hi def link difModel      Statement
hi def link difEscape     Special
hi def link difPortType     Type
