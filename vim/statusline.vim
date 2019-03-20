set showmode              " Show current mode.
set laststatus=2          " Two lines for statusline (needed for airline)
set showcmd               " Show (partial) command in status line.
set wildmenu
set wildmode=list:longest
set wildchar=<TAB>
set noshowmode            " Hide mode text below statusline
set showtabline=1

" ----------------------------------------------------------------------------
" Airline
" ----------------------------------------------------------------------------
function! AirlineInit()
    let g:airline_section_a = airline#section#create(['mode'])
    let g:airline_section_b = airline#section#create(['branch', 'hunks'])
    let g:airline_section_c = airline#section#create(['readonly'])
    let g:airline_section_x = airline#section#create([''])
    let g:airline_section_z = '%1p%% ☰ %1l/%L:%1v'
    let g:airline_symbols.notexists = ''
    let g:airline_symbols.maxlinenr=''
endfunction
autocmd User AirlineAfterInit call AirlineInit()

let g:airline_theme='base16_spacemacs_mod'
let g:airline_powerline_fonts=1                           " Use powerline fonts
let g:airline_focuslost_inactive = 1                      " Hide airline when focus lost
let g:airline_inactive_collapse=1                         " Collapse airline for inactive windows
let g:airline_skip_empty_sections = 1
  let g:airline_mode_map = {
      \ '__' : '-',
      \ 'c'  : 'C',
      \ 'i'  : 'I',
      \ 'ic' : 'I',
      \ 'ix' : 'I',
      \ 'n'  : 'N',
      \ 'ni' : 'N',
      \ 'no' : 'N',
      \ 'R'  : 'R',
      \ 'Rv' : 'R',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ 't'  : 'T',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ }
  " --- Ale Linting Extension ----------------------------------------------
let g:ale#airline#extensions#ale#enabled = 1              " Enable ALE extension
  " --- Extensions ---------------------------------------------------------
  " Reorder sections
let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c' ],
    \ [ 'x', 'error', 'warning', 'y', 'z']]

" Control which sections get truncated and at what width.
let g:airline#extensions#default#section_truncate_width = {
    \ 'b': 79,
    \ 'x': 60,
    \ 'y': 88,
    \ 'z': 25,
    \ 'warning': 80,
    \ 'error': 100,
    \ }
call airline#parts#define_minwidth('tagbar', 100)
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]' " Only show encoding when NOT UTF-8
let g:airline#extensions#hunks#non_zero_only = 1             " Hide empty sections
let g:airline#extensions#hunks#empty_message = ''
let g:airline#extensions#branch#empty_message = ''

  " --- Tabline plugin ----------------------------------------------------
let g:airline#extensions#tabline#enabled = 1                 " Enable tabline
let g:airline#extensions#tabline#show_close_button = 1       " Show close button
let g:airline#extensions#tabline#close_symbol = 'x'          " Show close button
let g:airline#extensions#tabline#show_buffers = 0            " Show buffers
let g:airline#extensions#tabline#current_first = 1           " Show current tab first
let g:airline#extensions#tabline#buffer_idx_mode = 1         " Show buffer index
let g:airline#extensions#tabline#show_tab_nr = 1             " Enable/disable displaying tab number in tabs mode
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#disable_refresh = 0
let g:airline#extensions#tabline#tab_min_count = 2
" define the set of filetypes which are ignored selectTab keymappings >
let g:airline#extensions#tabline#keymap_ignored_filetypes = ['vimfiler', 'nerdtree']
let airline#extensions#tabline#ignore_bufadd_pat =
          \ 'undotree|vimfiler|tagbar|nerd_tree'
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" --- Tmuxline plugin ----------------------------------------------------
let g:tmuxline_preset = {
      \'a'    : '#H',
      \'b'    : ['#(pwd)'],
      \'c'    : '#(cd #{pane_current_path}; echo "" $(git rev-parse --abbrev-ref HEAD))',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'z'    : ['%R', '%a', '%b %d, %Y']}
