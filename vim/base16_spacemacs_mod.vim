" vim-airline base16-spacemacs theme by Peter Meehan (http://github.com/22a)
" Base16 Spacemacs by Chris Kempson (http://chriskempson.com)
" Spacemacs scheme by Nasser Alshammari (https://github.com/nashamri/spacemacs-theme)

let s:gui00 = "#1f2022"
let s:gui01 = "#282828"
let s:gui02 = "#444155"
" let s:gui02 = "#3a3a3a"
let s:gui03 = "#585858"
let s:gui04 = "#b8b8b8"
let s:gui05 = "#a3a3a3"
let s:gui06 = "#3a3a3a"
"let s:gui06 = "#e8e8e8"
let s:gui07 = "#f8f8f8"
let s:gui08 = "#f2241f"
let s:gui09 = "#ffa500"
let s:gui0A = "#b1951d"
let s:gui0B = "#67b11d"
let s:gui0C = "#2d9574"
let s:gui0D = "#444444"
let s:gui0D = "#444444"
" let s:gui0D = "#4f97d7"
let s:gui0E = "#a31db1"
let s:gui0F = "#b03060"

let s:cterm00 = 0
let s:cterm01 = 18
" let s:cterm02 = 19
let s:cterm02 = 238
let s:cterm03 = 8
let s:cterm04 = 20
let s:cterm05 = 7
let s:cterm06 = 252
" let s:cterm06 = 21
let s:cterm07 = 251
let s:cterm08 = 1
let s:cterm09 = 16
let s:cterm09 = 166
let s:cterm0A = 3
let s:cterm0B = 2
let s:cterm0C = 6
let s:cterm0D = 235
" let s:cterm0D = 4
let s:cterm0E = 5
let s:cterm0F = 17

" Sam custom (doesn't include all changes)
let s:cterm10 = 244
let s:cterm13 = 248
let s:cterm11 = 237
let s:cterm12 = 235

let g:airline#themes#base16_spacemacs_mod#palette = {}

" Background for branch and file format blocks
let s:cterm_termbg    = s:cterm11
let s:gui_termbg      = s:gui06
" Foreground for branch and file format blocks
let s:cterm_termfg    = s:cterm10
let s:gui_termfg      = s:gui06
" Background for branch and file format blocks (insert)
let s:ctermbg_i       = 28
let s:guibg_i         = s:gui06
" Foreground for branch and file format blocks (insert)
let s:ctermfg_i       = 51
let s:guifg_i         = s:gui06
" Background for branch and file format blocks (normal modified)
let s:ctermbg_nm      = 19
let s:guibg_nm        = s:gui06
" Foreground for branch and file format blocks (normal modified)
let s:ctermfg_nm      = 51
let s:guifg_nm        = s:gui06
" Background for branch and file format blocks (insert modified)
let s:ctermbg_im      = 28
let s:guibg_im        = s:gui06
" Foreground for branch and file format blocks (insert modified)
let s:ctermfg_im      = 51
let s:guifg_im        = s:gui06

" Background for middle block
let s:cterm_termbg2   = s:cterm00
let s:gui_termbg2     = s:gui00
" Foreground for middle block
let s:cterm_termfg2   = s:cterm06
let s:gui_termfg2     = s:gui06
" Background for middle block (modified)
let s:cterm_termmodbg2= s:cterm00
let s:gui_termmodbg2  = s:gui00
" Foreground for middle block (modified)
let s:cterm_termmodfg2= s:cterm06
let s:gui_termmodfg2  = s:gui06

" Background for normal mode and file position blocks
let s:cterm_normalbg  = s:cterm12
let s:gui_normalbg    = s:gui0D
" Foreground for normal mode and file position blocks
let s:cterm_normalfg  = s:cterm13
let s:gui_normalfg    = s:gui07
" Background for normal mode and file position blocks (modified)
let s:cterm_normmodbg = 21
let s:gui_normmodbg   = s:gui0D
" Foreground for normal mode and file position blocks (modified)
let s:cterm_normmodfg = 51
let s:gui_normmodfg   = s:gui07

" Background for insert mode and file position blocks
let s:cterm_insertbg  = s:cterm0B
let s:gui_insertbg    = s:gui0B
" Foreground for insert mode and file position blocks
let s:cterm_insertfg  = s:cterm07
let s:gui_insertfg    = s:gui07
" Background for insert mode and file position blocks (modified)
let s:cterm_imodbg    = 22
let s:gui_imodbg      = s:gui0B
" Foreground for insert mode and file position blocks (modified)
let s:cterm_imodfg    = 234
let s:gui_imodfg      = s:gui07

" Background for visual mode and file position blocks
let s:cterm_visualbg  = s:cterm09
let s:gui_visualbg    = s:gui09
" Foreground for visual mode and file position blocks
let s:cterm_visualfg  = s:cterm07
let s:gui_visualfg    = s:gui07

" Background for replace mode and file position blocks
let s:cterm_replacebg = s:cterm08
let s:gui_replacebg   = s:gui08
" Foreground for replace mode and file position blocks
let s:cterm_replacefg = s:cterm07
let s:gui_replacefg   = s:gui07

" Background for inactive mode
let s:cterm_inactivebg = s:cterm02
let s:gui_inactivebg   = s:gui02
" Foreground for inactive mode
let s:cterm_inactivefg = s:cterm04
let s:gui_inactivefg   = s:gui04

" Branch and file format blocks
let s:BB   = [s:gui_termfg, s:gui_termbg, s:cterm_termfg, s:cterm_termbg]  " Branch and file format blocks
let s:BBnm = [s:guifg_nm,   s:guibg_nm,   s:ctermfg_nm,   s:ctermbg_nm]    " Normal modified
let s:BBi  = [s:guifg_i,    s:guibg_i,    s:ctermfg_i,    s:ctermbg_i]     " Insert
let s:BBim = [s:guifg_im,   s:guibg_im,   s:ctermfg_im,   s:ctermbg_im]    " Insert modified

" Normal mode
let s:N1 = [s:gui_normalfg, s:gui_normalbg, s:cterm_normalfg, s:cterm_normalbg] " Outside blocks in normal mode
let s:N2 = [s:gui_termfg2, s:gui_termbg2, s:cterm_normalbg, s:cterm_termbg2]    " Middle block
let s:N3 = [s:gui_normmodfg, s:gui_normmodbg, s:cterm_normmodfg, s:cterm_normmodbg] " Outside blocks normal (modified)
let s:N4 = [s:gui_termmodfg2, s:gui_termmodbg2, s:cterm_normmodbg, s:cterm_termmodbg2]    " Middle block (modified)
let g:airline#themes#base16_spacemacs_mod#palette.normal = airline#themes#generate_color_map(s:N1, s:BB, s:N2)
let g:airline#themes#base16_spacemacs_mod#palette.normal_modified = airline#themes#generate_color_map(s:N3, s:BBnm, s:N4)
" let g:airline#themes#base16_spacemacs_mod#palette.normal_modified = g:airline#themes#base16_spacemacs#palette.normal

" Insert mode
let s:I1 = [s:gui_insertfg, s:gui_insertbg, s:cterm_insertfg, s:cterm_insertbg]  " Outside blocks in insert mode
let s:I2 = [s:gui_insertbg, s:gui_termbg2,  s:cterm_insertbg, s:cterm_termbg2]   " Middle block
let s:I3 = [s:gui_imodfg,   s:gui_imodbg,   233, 2]    " Outside blocks in insert mode
let s:I4 = [s:gui_insertbg, s:gui_termbg2,  s:cterm_insertbg, s:cterm_termbg2]   " Middle block
let g:airline#themes#base16_spacemacs_mod#palette.insert = airline#themes#generate_color_map(s:I1, s:BBi, s:I2)
let g:airline#themes#base16_spacemacs_mod#palette.insert_modified = airline#themes#generate_color_map(s:I3, s:BBim, s:I4)
" let g:airline#themes#base16_spacemacs_mod#palette.insert_modified = g:airline#themes#base16_spacemacs#palette.insert

" Replace mode
let s:R1 = [s:gui_replacefg, s:gui_replacebg, s:cterm_replacefg, s:cterm_replacebg]  " Outside blocks in replace mode
let s:R2 = [s:gui_termfg, s:gui_termbg2, s:cterm_termfg, s:cterm_termbg2]            " Middle block
let g:airline#themes#base16_spacemacs_mod#palette.replace = airline#themes#generate_color_map(s:R1, s:BB, s:R2)
let g:airline#themes#base16_spacemacs_mod#palette.replace_modified = g:airline#themes#base16_spacemacs#palette.replace

" Visual mode
let s:V1 = [s:gui_visualfg, s:gui_visualbg, s:cterm_visualfg, s:cterm_visualbg] " Outside blocks in visual mode
let s:V2 = [s:gui_visualbg, s:gui_termbg2, s:cterm_visualbg, s:cterm_termbg2]   " Middle block
let g:airline#themes#base16_spacemacs_mod#palette.visual = airline#themes#generate_color_map(s:V1, s:BB, s:V2)
let g:airline#themes#base16_spacemacs_mod#palette.visual_modified = g:airline#themes#base16_spacemacs#palette.visual

" Inactive mode
let s:IA1 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let s:IA2 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let s:IA3 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let g:airline#themes#base16_spacemacs_mod#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Warnings
let s:WI = [s:gui07, s:gui09, s:cterm07, s:cterm09]
let g:airline#themes#base16_spacemacs_mod#palette.normal.airline_warning = [
     \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
     \ ]

let g:airline#themes#base16_spacemacs_mod#palette.normal_modified.airline_warning =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_warning

let g:airline#themes#base16_spacemacs_mod#palette.insert.airline_warning =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_warning

let g:airline#themes#base16_spacemacs_mod#palette.insert_modified.airline_warning =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_warning

let g:airline#themes#base16_spacemacs_mod#palette.visual.airline_warning =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_warning

let g:airline#themes#base16_spacemacs_mod#palette.visual_modified.airline_warning =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_warning

let g:airline#themes#base16_spacemacs_mod#palette.replace.airline_warning =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_warning

let g:airline#themes#base16_spacemacs_mod#palette.replace_modified.airline_warning =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_warning

" Errors
let s:ER = [s:gui07, s:gui08, s:cterm07, s:cterm08]
let g:airline#themes#base16_spacemacs_mod#palette.normal.airline_error = [
     \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
     \ ]

let g:airline#themes#base16_spacemacs_mod#palette.normal_modified.airline_error =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_error

let g:airline#themes#base16_spacemacs_mod#palette.insert.airline_error =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_error

let g:airline#themes#base16_spacemacs_mod#palette.insert_modified.airline_error =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_error

let g:airline#themes#base16_spacemacs_mod#palette.visual.airline_error =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_error

let g:airline#themes#base16_spacemacs_mod#palette.visual_modified.airline_error =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_error

let g:airline#themes#base16_spacemacs_mod#palette.replace.airline_error =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_error

let g:airline#themes#base16_spacemacs_mod#palette.replace_modified.airline_error =
    \ g:airline#themes#base16_spacemacs_mod#palette.normal.airline_error

" CtrlP plugin colors
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#base16_spacemacs_mod#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [s:gui_normalfg, s:gui_normalbg, s:cterm_normalfg, s:cterm_normalbg, ''],
      \ [s:gui_termfg, s:gui_termbg, s:cterm_termfg, s:cterm_termbg, ''],
      \ [s:gui_termfg2, s:gui_termbg2, s:cterm_termfg2, s:cterm_termbg2, 'bold'])
