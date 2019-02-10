if exists("b:current_syntax")
    finish
endif

syn keyword ripplKeyword if then else let in over pre head tail fun and or not

syn keyword wyvKeyword def nextgroup=wyvFunction skipwhite
syn keyword wyvKeyword type nextgroup=wyvTypeDef skipwhite

syn match wyvFunction "[a-zA-Z][a-zA-Z0-9_]*" contained

syn match wyvNumber '\<[+-]\=\d\+\>'

syn match ripplComment '\/\/.*'
syn region ripplComment start="/\*" end="\*/" extend

syn region wyvString start='"' skip=/\v\\./ end='"'
syn region wyvString start="'" skip=/\v\\./ end="'"

syn keyword ripplBool true false

syn keyword wyvType int float char bool

hi def link ripplKeyword Keyword
hi def link ripplBool Boolean
hi def link ripplType Type
hi def link wyvFunction Function
hi def link ripplNumber Number
hi def link ripplComment Comment
hi def link wyvString String

let b:current_syntax = "rippl"
