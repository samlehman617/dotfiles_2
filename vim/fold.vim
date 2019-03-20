" Author        : Sam Lehman
" Created       : 31/10/2018
" License       : MIT
" Description   : Configures folding for VIM/NeoVIM

" set foldmethod=indent
set foldenable
set foldcolumn=2
set foldmethod=syntax
set foldnestmax=10
" set nofoldenable
set foldlevel=99
set foldlevelstart=99 " Start with all folds open
set foldminlines=4
let javaScript_fold=1
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
                               " which commands trigger auto-unfold:
