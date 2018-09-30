" Language:    Kit<https://github.com/kitlang/kit>
" Maintainer:  Spencer King <sking8@alumni.nd.edu>
" URL:         https://github.com/spencerking/vim-kit
" License:     MIT

" Bail if our syntax is already loaded.
if exists('b:current_syntax') && b:current_syntax == 'kit'
  finish
endif



" {{{ Whitespace and Comments
syntax region kitComment start=#\/\*# end=#\*\/#
syntax match kitComment /\/\/.*/
highlight default link kitComment Comment
" }}}



" {{{ Identifiers
syntax match kitIdentifier /[[:alpha:]_][[:alnum:]_]*/
highlight default link kitIdentifier Identifier
" }}}



" {{{ Keywords
" Keywords used in declarations:
syntax keyword kitDeclarationKeywords function import include var enum kitDeclarationKeywords Keyword

" Keywords used in statements:
syntax keyword kitStatementKeywords break case continue default do else if for return switch  while
highlight default link kitStatementKeywords Keyword

" Keywords used in expressions and types:
syntax keyword kitExpressionTypeKeywords false true null
highlight default link kitExpressionTypeKeywords Keyword

" Keywords reserved in particular contexts:
syntax keyword kitReserveKeywords highlight default link kitReserveKeywords Keyword
" }}}



" {{{ Literals
" Integer literal
syntax match kitIntegerLiteral /\<\d\+\%(_\d\+\)*\%(\.\d\+\%(_\d\+\)*\)\=\>/
syntax match kitIntegerLiteral /\<\d\+\%(_\d\+\)*\%(\.\d\+\%(_\d\+\)*\)\=\%([eE][-+]\=\d\+\%(_\d\+\)*\)\>/
syntax match kitIntegerLiteral /\<0x\x\+\%(_\x\+\)*\>/
syntax match kitIntegerLiteral /\<0o\o\+\%(_\o\+\)*\>/
syntax match kitIntegerLiteral /\<0b[01]\+\%(_[01]\+\)*\>/
highlight default link kitIntegerLiteral Number
" String literal
syntax region kitIntegerLiteral start=/"/ skip=/\\"/ end=/"/
highlight default link kitIntegerLiteral String
" }}}



" {{{ Operators
syntax keyword kitOperatorKeywords / = - + ! * % < > & \|
highlight default link swiftOperatorKeywords Operator
" }}}



" {{{ Types
syntax keyword kitTypeIdentifier int float double str
highlight default link kitTypeIdentifier Type
" }}}



if !exists('b:current_syntax')
  let b:current_syntax = 'kit'
endif