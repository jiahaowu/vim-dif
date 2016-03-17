" Vim syntax file
" Language: DIF
" Author:   Chung-Ching Shen
" Last Verision: 03/17/2009

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" DIF keywords
syn keyword difStatement   topology actor nodes edges
syn keyword difStatement   production consumption
syn keyword difStatement   attribute baseon parameter interface refinement
syn keyword difStatement   computation
syn keyword difStatement   inputs outputs
syn keyword difModel       bdf cfdf csdf dif ildf mdsdf psdf sdf
syn keyword difConstant    true false

syn region  difComment start="/\*" end="\*/"
syn match   difComment "//.*"
syn match   difValue "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\([eE][0-9_]*\|\)\>"
syn match   difValue "\[.\{-}\]"
syn region  difString start=+"+ skip=+\\"+ end=+"+

"Modify the following as needed.  The trade-off is performance versus
"functionality.
syn sync minlines=50

" Highlighting
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_dif_syn_inits")
    if version < 508
        let did_dif_syn_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif

    " The default highlighting.
    HiLink difString     String
    HiLink difComment        Comment
    HiLink difConstant       Constant
    HiLink difValue      Number
    HiLink difStatement      Statement
    HiLink difModel      Statement
    HiLink difEscape     Special

    delcommand HiLink
endif

let b:current_syntax = "dif"
