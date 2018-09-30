" Language:    Kit<https://github.com/kitlang/kit>
" Maintainer:  Spencer King <sking8@alumni.nd.edu>
" URL:         https://github.com/spencerking/vim-kit
" License:     MIT

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
   finish
endif
let b:did_indent = 1

" C indenting is built-in, thus this is very simple
setlocal cindent

let b:undo_indent = "setl cin<"
