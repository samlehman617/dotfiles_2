" Author        : Sam Lehman
" Created       : 29/10/2018
" License       : MIT
" Description   : Controls the UI for VIM/NeoVIM

" --- Basics -----------------------------------------------------------------
" set t_Co=256
set background=dark
" if (has("termguicolors")) | set termguicolors | endif
" --- Color Scheme -----------------------------------------------------------
function! ThemeOverride() abort
    highlight! Normal                       ctermbg=black ctermfg=250
    highlight! EndOfBuffer     cterm=NONE   ctermbg=NONE  ctermfg=black guibg=black guifg=black
    highlight! LineNr          cterm=bold   ctermbg=NONE  ctermfg=238   guibg=NONE  guifg=237
    " highlight! LineNr          cterm=bold   ctermbg=NONE  ctermfg=238   guibg=NONE  guifg=237
    highlight! FoldColumn                   ctermbg=NONE  ctermfg=black guibg=NONE  guifg=gray
    highlight! Folded                       ctermbg=NONE                guibg=NONE
    highlight! SignColumn      cterm=NONE   ctermbg=NONE
    highlight! Cursor          cterm=NONE   ctermbg=190   ctermfg=black guibg=190   guifg=black
    highlight! iCursor         cterm=NONE   ctermbg=45    ctermfg=black guibg=45    guifg=black
    highlight! CursorLine      cterm=NONE   ctermbg=233
    highlight! CursorLineNR    cterm=bold   ctermbg=233   ctermfg=190
    highlight! CursorColumn    cterm=NONE   ctermbg=233
    highlight! Comment         cterm=italic               ctermfg=239
    highlight! Pmenu           cterm=bold   ctermbg=233   ctermfg=240
    highlight! PmenuSel        cterm=bold   ctermbg=236   ctermfg=252
    highlight! Conceal         cterm=bold   ctermbg=NONE  ctermfg=blue
    highlight! Command                                    ctermfg=244
    highlight! ALEErrorSign    cterm=bold   ctermbg=NONE  ctermfg=196
    highlight! ALEWarningSign  cterm=bold   ctermbg=NONE  ctermfg=11
    highlight! CocErrorSign    cterm=bold   ctermbg=NONE  ctermfg=red
    highlight! CocErrorLine    cterm=bold   ctermbg=NONE  ctermfg=NONE
    highlight! CocWarningSign  cterm=bold   ctermbg=NONE  ctermfg=190
    highlight! GitGutterAdd    cterm=bold   ctermbg=NONE  ctermfg=2
    highlight! GitGutterChange cterm=bold   ctermbg=NONE  ctermfg=3 
    highlight! GitGutterDelete cterm=bold   ctermbg=NONE  ctermfg=1 
 " #009900" #444477 " #ff3333
endfunction
function! ThemeInsert() abort
    highlight CursorLineNR ctermfg=45 ctermbg=
endfunction

autocmd InsertEnter * highlight CursorLineNR ctermfg=45
autocmd InsertLeave * highlight CursorLineNR ctermfg=190
augroup CMDLINE
    au!
    au CmdLineEnter * highlight Normal ctermfg=white
    au CmdLineLeave * highlight Normal ctermfg=250
augroup END
augroup custom_colors
    autocmd!
    autocmd ColorScheme * call ThemeOverride()   " Call ThemeOverride when Colorscheme set
augroup END
" let base16colorspace=256
colorscheme wombat256 " jellybeans wombat dracula

" --- Syntax Highlighting ------------------------------------------------------
if has('syntax') && !exists('g:syntax_on')
    syntax enable                                " Enable syntax highlighting
endif
" --- Dev Icons ----------------------------------------------------------------
let g:webdevicons_enable = 1                     " Enable devicons
let g:webdevicons_enable_nerdtree = 1            " Add the flags to NERDTree
let g:webdevicons_enable_airline_tabline = 1     " Add to vim-airline's tabline
let g:webdevicons_enable_airline_statusline = 1  " Add to vim-airline's statusline
let g:webdevicons_enable_flagship_statusline = 1 " Add to flagship's statusline
let g:WebDevIconsUnicodeDecorateFileNodes = 1    " Use icons on files
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' ' " Space after glyph character (default ' ')
let g:WebDevIconsUnicodeDecorateFolderNodes = 1  " Enable directory glyph flag (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1         " Enable open/close dir glyph flags (disabled by default: 0)
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1 " Force padding in NERDTree so icons line up vertically
" let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ' " change the default character when no match found
