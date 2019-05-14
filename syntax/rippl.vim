if exists("b:current_syntax")
    finish
endif

syn keyword ripplKeyword if then else let in over pre head tail fun and or not

syn match ripplFunction "[a-zA-Z][a-zA-Z0-9_]*" contained

syn match ripplNumber '\<[+-]\=\d\+\>'

syn match ripplComment '\/\/.*'
syn region ripplComment start="/\*" end="\*/" extend

syn region ripplString start='"' skip=/\v\\./ end='"'
syn region ripplString start="'" skip=/\v\\./ end="'"

syn keyword ripplApp ~
syn keyword ripplBool true false

syn keyword ripplType int float char bool

hi def link ripplKeyword Keyword
hi def link ripplBool Boolean
hi def link ripplType Type
hi def link ripplFunction Function
hi def link ripplNumber Number
hi def link ripplApp Statement
hi def link ripplComment Comment
hi def link ripplString String

let b:current_syntax = "rippl"
