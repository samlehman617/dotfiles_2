set laststatus=2          " Two lines for statusline (needed for airline)
set showcmd               " Show (partial) command in status line.
set wildmenu
set wildmode=list:longest
set wildchar=<TAB>
set noshowmode            " Hide mode text below statusline
set showtabline=1

let async_status_old = ''
" ----------------------------------------------------------------------------
" Utility Functions
" ----------------------------------------------------------------------------
" Define new accents for run results
function! AirlineThemePatch(palette)
    let a:palette.accents.running = ['', '', '', '', '']
    let a:palette.accents.success = ['#00a000', '', '2', '', '']
    let a:palette.accents.failure = ['#ff0000', '', 'red', '', '']
endfunction
function! GetAsyncrunRunning()
    let async_status = g:asyncrun_status
    if async_status != g:async_status_old
        if async_status == 'running'
            call airline#parts#define_accent('asyncrun_status', 'running')
        elseif async_status == 'success'
            call airline#parts#define_accent('asyncrun_status', 'success')
        elseif async_status == 'failure'
            call airline#parts#define_accent('asyncrun_status', 'failure')
        endif
        let g:airline_section_x = airline#section#create(['asyncrun_status'])
        AirlineRefresh
        let g:async_status_old = async_status
    endif
    return async_status
endfunction
function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, 'x' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, '!' . info['warning'])
  endif
  return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction
function! AirlineInit()
    let g:airline#extensions#coc#enabled = 1
    let g:airline_section_a = airline#section#create(['mode'])
    let g:airline_section_b = airline#section#create_left(['branch', 'hunks'])
    " let g:airline_section_c = airline#section#create(['readonly', 'bufferline'])
    let g:airline_section_x = airline#section#create_right(['path'])
    let g:airline_section_y = airline#section#create(['ffenc', 'tagbar'])
    let g:airline_section_z = airline#section#create_right(['%2p%%/%L', '%l:%v'])
    let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
    let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
    let g:airline_symbols.notexists = ''
    let g:airline_symbols.maxlinenr=''
    let g:airline_theme_patch_func = 'AirlineThemePatch'
    call airline#parts#define_function('asyncrun_status', 'GetAsyncrunRunning')
    let g:airline_section_x = airline#section#create(['asyncrun_status'])
endfunction

" ----------------------------------------------------------------------------
" Airline
" ----------------------------------------------------------------------------
autocmd User AirlineAfterInit call AirlineInit()
" Reorder sections
let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c' ],
    \ [ 'x', 'error', 'warning', 'y', 'z']]

" Control which sections get truncated and at what width.
" let g:airline#extensions#default#section_truncate_width = {
"     \ 'b': 70,
"     \ 'c': 50,
"     \ 'x': 60,
"     \ 'y': 88,
"     \ 'z': 10,
"     \ 'warning': 80,
"     \ 'error': 80,
"     \ }
" Change mode labels
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'c'  : 'C',
    \ 'i'  : 'I',
    \ 'ic' : 'I',
    \ 'ix' : 'I',
    \ 'n'  : 'NORMAL',
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
" Theme (file in ...according to docs...not tested)
let g:airline_theme='lehmanator_theme'
" let g:airline_theme='base16_spacemacs_mod'

let g:airline_powerline_fonts=1                           " Use powerline fonts
let g:airline_focuslost_inactive = 1                      " Hide airline when focus lost
let g:airline_inactive_collapse=1                         " Collapse airline for inactive windows
let g:airline_skip_empty_sections = 0
  " --- Linting ------------------------------------------------------------
" let g:ale#airline#extensions#ale#enabled = 1              " Enable ALE extension
let g:airline#extensions#coc#enabled = 1
" let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
" let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
let coc_status_error_sign = '×'
let coc_status_warning_sign = '!'
let airline#extensions#coc#error_symbol = '×'
let airline#extensions#coc#warning_symbol = '!'
  " --- Extensions ---------------------------------------------------------

let g:airline#extensions#wordcount#filetypes = 
    \ ['asciidoc', 'help', 'mail', 'markdown', 'org', 'rst', 'tex', 'text'] 
" call airline#parts#define_minwidth('tagbar', 100)
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]' " Only show encoding when NOT UTF-8
" --- Hunks ------------------------------------------------------------------
let g:airline#extensions#hunks#enabled = 1                   " Enable repo change hunks
let g:airline#extensions#hunks#non_zero_only = 1             " Hide empty sections
let g:airline#extensions#hunks#empty_message = ''
let g:airline#extensions#branch#empty_message = ''

  " --- Tabline plugin ----------------------------------------------------
" let g:airline#extensions#bufferline#enabled = 1              " Enable tabline
" let g:bufferline_active_highlight = 'StatusLineNC'
" let g:airline#extensions#tabline#enabled = 1                 " Enable tabline
let g:airline#extensions#tabline#buffer_idx_mode = 1         " Show buffer index
let g:airline#extensions#tabline#close_symbol = 'x'          " Show close button
let g:airline#extensions#tabline#current_first = 1           " Show current tab first
let g:airline#extensions#tabline#disable_refresh = 0         " Dont refresh always (faster=1)
let g:airline#extensions#tabline#show_buffers = 1            " Show buffers
let g:airline#extensions#tabline#show_close_button = 1       " Show close button
let g:airline#extensions#tabline#show_tab_nr = 1             " Enable/disable displaying tab number in tabs mode
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#tab_min_count = 2
" define the set of filetypes which are ignored selectTab keymappings >
let g:airline#extensions#tabline#keymap_ignored_filetypes = ['vimfiler', 'nerdtree']
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#ignore_bufadd_pat =
          \ 'undotree|vimfiler|tagbar|nerd_tree|startify|!'
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTabr
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" --- Tmuxline plugin ----------------------------------------------------
let g:airline#extensions#tmuxline#enabled = 1
let g:tmuxline_preset = {
      \'a'    : '#H',
      \'b'    : ['#(pwd)'],
      \'c'    : '#(cd #{pane_current_path}; echo "" $(git rev-parse --abbrev-ref HEAD))',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'z'    : ['%R', '%a', '%b %d, %Y']}


let g:asyncrun_shell = '/usr/bin/zsh'
let g:asyncrun_shellflag = '-c'
