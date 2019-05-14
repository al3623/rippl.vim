if exists("b:current_syntax")
    finish
endif

syn keyword ripplKeyword if then else let in over cons head tail fun and or not cat len none just is_none from_just first sec

syn match ripplFunction "[a-zA-Z][a-zA-Z0-9_]*" contained

syn match ripplNumber '\<[+-]\=\d\+\>'

syn match ripplComment "#.*$"
syn region ripplComment start="{-" end="-}" extend

syn region ripplString start='"' skip=/\v\\./ end='"'
syn region ripplString start="'" skip=/\v\\./ end="'"

syn match ripplApp "[\d126]"
syn keyword ripplBool true false maybe

syn keyword ripplType int float char bool

hi def link ripplKeyword Keyword
hi def link ripplBool Boolean
hi def link ripplType Type
hi def link ripplFunction Identifier
hi def link ripplNumber Number
hi def link ripplApp NonText
hi def link ripplComment Comment
hi def link ripplString String

let b:current_syntax = "rippl"
