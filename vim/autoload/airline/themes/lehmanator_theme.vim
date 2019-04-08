" Colorscheme by Sam Lehman (https://github.com/samlehman617/spacemacs-theme)

" Unmodified GUI Colors
let s:gui00 = "#1f2022"
let s:gui01 = "#282828"
let s:gui02 = "#444155"
let s:gui03 = "#585858"
let s:gui04 = "#b8b8b8"
let s:gui05 = "#a3a3a3"
let s:gui06 = "#e8e8e8"
let s:gui07 = "#f8f8f8"
let s:gui08 = "#f2241f"
let s:gui09 = "#ffa500"
let s:gui0A = "#b1951d"
let s:gui0B = "#67b11d"
let s:gui0C = "#2d9574"
let s:gui0D = "#4f97d7"
let s:gui0E = "#a31db1"
let s:gui0F = "#b03060"
" Modified GUI Colors
let s:gui10 = "#1f2022"
let s:gui11 = "#282828"
let s:gui12 = "#444155"
let s:gui13 = "#585858"
let s:gui14 = "#b8b8b8"
let s:gui15 = "#a3a3a3"
let s:gui16 = "#e8e8e8"
let s:gui17 = "#f8f8f8"
let s:gui18 = "#f2241f"
let s:gui19 = "#ffa500"
let s:gui1A = "#b1951d"
let s:gui1B = "#67b11d"
let s:gui1C = "#2d9574"
let s:gui1D = "#4f97d7"
let s:gui1E = "#a31db1"
let s:gui1F = "#b03060"
" Unmodified Terminal Colors
let s:cterm00 = 0
let s:cterm01 = 18
let s:cterm02 = 19
let s:cterm03 = 8
let s:cterm04 = 20
let s:cterm05 = 7
let s:cterm06 = 21
let s:cterm07 = 15
let s:cterm08 = 1
let s:cterm09 = 16
let s:cterm0A = 3
let s:cterm0B = 2
let s:cterm0C = 6
let s:cterm0D = 4
let s:cterm0E = 5
let s:cterm0F = 17
" Modified Terminal Colors
let s:cterm10 = 0
let s:cterm11 = 18
let s:cterm12 = 19
let s:cterm13 = 8
let s:cterm14 = 20
let s:cterm15 = 7
let s:cterm16 = 21
let s:cterm17 = 15
let s:cterm18 = 1
let s:cterm19 = 16
let s:cterm1A = 3
let s:cterm1B = 2
let s:cterm1C = 6
let s:cterm1D = 4
let s:cterm1E = 5
let s:cterm1F = 17

let g:airline#themes#base16_spacemacs#palette = {}

" Branch and file format blocks    // s:cterm_termbg
let s:ctermbg_BNU  = s:cterm02 " Normal/Unmodified/BG/TERM (might need to change other occurrences)
let s:guibg_BNU    = s:gui02   " Normal/Unmodified/BG/GUI
let s:ctermfg_BNU  = s:cterm06 " Normal/Unmodified/FG/TERM
let s:guifg_BNU    = s:gui06   " Normal/Unmodified/FG/GUI
let s:ctermbg_BNM  = s:cterm12 " Normal/Modified/BG/TERM
let s:guibg_BNM    = s:gui12   " Normal/Modified/BG/GUI
let s:ctermfg_BNM  = s:cterm16 " Normal/Modified/FG/TERM
let s:guifg_BNM    = s:gui16   " Normal/Modified/FG/GUI

" Middle block
let s:ctermbg_MU   = s:cterm00 " Unmodified/BG/TERM
let s:guibg_MU     = s:gui00   " Unmodified/BG/GUI
let s:ctermfg_MU   = s:cterm06 " Unmodified/FG/TERM
let s:guifg_MU     = s:gui06   " Unmodified/BG/GUI
let s:ctermbg_MM   = s:cterm10 " Modified/BG/TERM
let s:guibg_MM     = s:gui10   " Modified/BG/GUI
let s:ctermfg_MM   = s:cterm16 " Modified/FG/TERM
let s:guifg_MM     = s:gui16   " Modified/BG/GUI

" Mode and file position blocks
let s:ctermbg_FNU  = s:cterm0D " Normal/Unmodified/BG
let s:guibg_FNU    = s:gui0D
let s:ctermfg_FNU  = s:cterm07 " Normal/Unmodified/FG
let s:guifg_FNU    = s:gui07
let s:ctermbg_FNM  = s:cterm1D " Normal/Modified/BG
let s:guibg_FNM    = s:gui1D
let s:ctermfg_FNM  = s:cterm17 " Normal/Mdified/FG
let s:guifg_FNM    = s:gui17

let s:ctermbg_FIU  = s:cterm0B " Insert/Unmodified/BG/TERM
let s:guibg_FIU    = s:gui0B
let s:ctermfg_FIU  = s:cterm07 " Insert/Unmodified/FG/TERM
let s:guifg_FIU    = s:gui07
let s:ctermbg_FIM  = s:cterm1B " Insert/Modified/BG
let s:guibg_FIM    = s:gui1B
let s:ctermfg_FIM  = s:cterm17 " Insert/Modified/FG
let s:guifg_FIM    = s:gui17

let s:ctermbg_FVU  = s:cterm09 " Visual/Unmodified/BG
let s:guibg_FVU    = s:gui09
let s:ctermfg_FVU  = s:cterm07 " Visual/Unmodified/FG
let s:guifg_FVU    = s:gui07
let s:ctermbg_FVM  = s:cterm19 " Visual/Modified/BG
let s:guibg_FVM    = s:gui09
let s:ctermfg_FVM  = s:cterm17 " Visual/Modified/FG
let s:guifg_FVM    = s:gui17

let s:ctermbg_FRU  = s:cterm08 " Replace/Unmodified/BG
let s:guibg_FRU    = s:gui08
let s:ctermfg_FRU  = s:cterm07 " Replace/Unmodified/FG
let s:guifg_FRU    = s:gui07
let s:ctermbg_FRM  = s:cterm18 " Replace/Modified/BG
let s:guibg_FRM    = s:gui18
let s:ctermfg_FRM  = s:cterm17 " Replace/Modified/FG
let s:guifg_FRM    = s:gui17

let s:ctermbg_FAU  = s:cterm02 " Inactive/Unmodified/BG
let s:guibg_FAU    = s:gui02
let s:ctermfg_FAU  = s:cterm04 " Inactive/Unmodified/FG
let s:guifg_FAU    = s:gui04
let s:ctermbg_FAM  = s:cterm12 " Inactive/Modified/BG
let s:guibg_FAM    = s:gui12
let s:ctermfg_FAM  = s:cterm14 " Inactive/Modified/FG
let s:guifg_FAM    = s:gui14

" Branch and file format blocks
let s:BNU = [s:guifg_BNU, s:guibg_BNU, s:ctermfg_BNU, s:ctermbg_BNU] " Normal/Unmodified
let s:BNM = [s:guifg_BNU, s:guibg_BNU, s:ctermfg_BNU, s:ctermbg_BNU] " Normal/Modified
let s:BIU = [s:guifg_BNU, s:guibg_BNU, s:ctermfg_BNU, s:ctermbg_BNU] " Insert/Unmodified
let s:BIM = [s:guifg_BNU, s:guibg_BNU, s:ctermfg_BNU, s:ctermbg_BNU] " Insert/Modified
" Normal mode
let s:ONU = [s:guifg_FNU, s:guibg_FNU, s:ctermfg_FNU, s:ctermbg_FNU]  " Outside blocks
let s:MNU = [s:guifg_MU,  s:guibg_MU,  s:ctermbg_FNU, s:ctermbg_MU ]  " Middle block
let s:ONM = [s:guifg_FNU, s:guibg_FNU, s:ctermfg_FNU, s:ctermbg_FNU]  " Outside blocks
let s:MNM = [s:guifg_MU,  s:guibg_MU,  s:ctermbg_FNU, s:ctermbg_MU ]  " Middle block
let g:airline#themes#base16_spacemacs#palette.normal = airline#themes#generate_color_map(s:ONU, s:BNU, s:MNU)
let g:airline#themes#base16_spacemacs#palette.normal_modified = g:airline#themes#base16_spacemacs#palette.normal
" Insert mode
let s:OIU = [s:guifg_FIU, s:guibg_FIU, s:ctermfg_FIU, s:ctermbg_FIU]  " Outside blocks
let s:MIU = [s:guibg_FIU, s:guibg_MU,  s:ctermbg_FIU, s:ctermbg_MU ]  " Middle block
let s:OIM = [s:guifg_FIU, s:guibg_FIU, s:ctermfg_FIU, s:ctermbg_FIU]  " Outside blocks
let s:MIM = [s:guibg_FIU, s:guibg_MU,  s:ctermbg_FIU, s:ctermbg_MU ]  " Middle block
let g:airline#themes#base16_spacemacs#palette.insert = airline#themes#generate_color_map(s:OIU, s:BNU, s:MIU)
let g:airline#themes#base16_spacemacs#palette.insert_modified = g:airline#themes#base16_spacemacs#palette.insert
" Replace mode
let s:ORU = [s:guifg_FRU, s:guibg_FRU, s:ctermfg_FRU, s:ctermbg_FRU]  " Outside blocks
let s:MRU = [s:guifg_BNU, s:guibg_MU,  s:ctermfg_BNU, s:ctermbg_MU ]  " Middle block
let s:ORM = [s:guifg_FRU, s:guibg_FRU, s:ctermfg_FRU, s:ctermbg_FRU]  " Outside blocks
let s:MRM = [s:guifg_BNU, s:guibg_MU,  s:ctermfg_BNU, s:ctermbg_MU ]  " Middle block
let g:airline#themes#base16_spacemacs#palette.replace = airline#themes#generate_color_map(s:ORU, s:BNU, s:MRU)
let g:airline#themes#base16_spacemacs#palette.replace_modified = g:airline#themes#base16_spacemacs#palette.replace
" Visual mode
let s:OVU = [s:guifg_FVU, s:guibg_FVU, s:ctermfg_FVU, s:ctermbg_FVU]  " Outside blocks
let s:MVU = [s:guibg_FVU, s:guibg_MU,  s:ctermbg_FVU, s:ctermbg_MU ]  " Middle block
let s:OVM = [s:guifg_FVU, s:guibg_FVU, s:ctermfg_FVU, s:ctermbg_FVU]  " Outside blocks
let s:MVM = [s:guibg_FVU, s:guibg_MU,  s:ctermbg_FVU, s:ctermbg_MU ]  " Middle block
let g:airline#themes#base16_spacemacs#palette.visual = airline#themes#generate_color_map(s:OVU, s:BNU, s:MVU)
let g:airline#themes#base16_spacemacs#palette.visual_modified = g:airline#themes#base16_spacemacs#palette.visual
" Inactive mode
let s:IA1 = [s:guifg_FAU, s:guibg_FAU, s:ctermfg_FAU, s:ctermbg_FAU, '']
let s:IA2 = [s:guifg_FAU, s:guibg_FAU, s:ctermfg_FAU, s:ctermbg_FAU, '']
let s:IA3 = [s:guifg_FAU, s:guibg_FAU, s:ctermfg_FAU, s:ctermbg_FAU, '']
let g:airline#themes#base16_spacemacs#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Warnings
let s:WI = [s:gui07, s:gui09, s:cterm07, s:cterm09]
let g:airline#themes#base16_spacemacs#palette.normal.airline_warning = [
  \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]]
let g:airline#themes#base16_spacemacs#palette.normal_modified.airline_warning =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_warning
let g:airline#themes#base16_spacemacs#palette.insert.airline_warning =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_warning
let g:airline#themes#base16_spacemacs#palette.insert_modified.airline_warning =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_warning
let g:airline#themes#base16_spacemacs#palette.visual.airline_warning =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_warning
let g:airline#themes#base16_spacemacs#palette.visual_modified.airline_warning =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_warning
let g:airline#themes#base16_spacemacs#palette.replace.airline_warning =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_warning
let g:airline#themes#base16_spacemacs#palette.replace_modified.airline_warning =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_warning

" Errors
let s:ER = [s:gui07, s:gui08, s:cterm07, s:cterm08]
let g:airline#themes#base16_spacemacs#palette.normal.airline_error = [
  \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]]
let g:airline#themes#base16_spacemacs#palette.normal_modified.airline_error =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_error
let g:airline#themes#base16_spacemacs#palette.insert.airline_error =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_error
let g:airline#themes#base16_spacemacs#palette.insert_modified.airline_error =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_error
let g:airline#themes#base16_spacemacs#palette.visual.airline_error =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_error
let g:airline#themes#base16_spacemacs#palette.visual_modified.airline_error =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_error
let g:airline#themes#base16_spacemacs#palette.replace.airline_error =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_error
let g:airline#themes#base16_spacemacs#palette.replace_modified.airline_error =
  \ g:airline#themes#base16_spacemacs#palette.normal.airline_error

" CtrlP plugin colors
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#base16_spacemacs#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
  \ [s:guifg_FNU, s:guibg_FNU, s:ctermfg_FNU, s:ctermbg_FNU, ''],
  \ [s:guifg_BNU, s:guibg_BNU, s:ctermfg_BNU, s:cterm_BNU, ''],
  \ [s:guifg_MU,  s:guibg_MU,  s:ctermfg_MU,  s:ctermbg_MU, 'bold'])
