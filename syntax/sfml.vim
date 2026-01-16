
if exists("b:current_syntax")
  finish
endif

" Comments (LINE_COMMENT: '--')
syn match sfmlComment /--.*$/

" Strings (STRING: '"' (~'"'|'\\"')* '"')
syn region sfmlString start=/"/ skip=/\\"/ end=/"/

" Numbers (NUMBER: [0-9]+)
syn match sfmlNumber /\<\d\+\>/

" Identifiers (IDENTIFIER: [a-zA-Z_][a-zA-Z0-9_]*)
syn match sfmlIdentifier /\<[a-zA-Z_][a-zA-Z0-9_]*\>/

" Control flow keywords
syn keyword sfmlControl IF THEN ELSE END DO
syn keyword sfmlTrigger EVERY TICKS SECONDS REDSTONE PULSE

" I/O keywords
syn keyword sfmlIO INPUT OUTPUT FROM TO MOVE WHERE EACH RETAIN SLOTS

" Direction keywords
syn keyword sfmlDirection TOP BOTTOM NORTH EAST SOUTH WEST SIDE

" Boolean keywords
syn keyword sfmlBoolean TRUE FALSE NOT AND OR

" Quantifier keywords
syn keyword sfmlQuantifier OVERALL SOME ONE LONE NO HAS

" Comparison operators
syn keyword sfmlOperator GT LT EQ LE GE

" Program structure keywords
syn keyword sfmlProgram NAME PROGRAM WORLD

" Symbols
syn match sfmlDelimiter /[,:()-]/

" Case-insensitive matching
syn case ignore

" Highlight links
hi def link sfmlComment     Comment
hi def link sfmlString      String
hi def link sfmlNumber      Number
hi def link sfmlControl     Conditional
hi def link sfmlTrigger     Keyword
hi def link sfmlIO          Keyword
hi def link sfmlDirection   Constant
hi def link sfmlBoolean     Boolean
hi def link sfmlQuantifier  Keyword
hi def link sfmlOperator    Operator
hi def link sfmlProgram     PreProc
hi def link sfmlDelimiter   Delimiter
hi def link sfmlIdentifier  Identifier

let b:current_syntax = "sfml"
