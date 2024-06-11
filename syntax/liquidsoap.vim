" Vim syntax file
" Language: Liquidsoap
" Maintainer: Tony Miller

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword liquidsoapFunction def end
syn keyword liquidsoapConditonal if else end

" Comments
syn match   liquidsoapSharpBang "\%^#!.*" display
syn match   liquidsoapComment "#.*" contains=liquidsoapSharpBang

" Literals
syn match   liquidsoapNumber '\d\+'
syn keyword liquidsoapBoolean true false
syn region liquidsoapString start=+"+ end=+"+
syn region liquidsoapString start=+'+ end=+'+

" Interpolation
syn region liquidsoapInterpolation start="#{" end="}"

let b:current_syntax = "liquidsoap"

hi def link liquidsoapFunction Keyword
hi def link liquidsoapConditonal Keyword
hi def link liquidsoapComment Comment
hi def link liquidsoapNumber Number
hi def link liquidsoapBoolean Boolean
hi def link liquidsoapInterpolation Delimiter
hi def link liquidsoapString String
