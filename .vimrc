""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --- NEOVIM -----------------------------------------------------------------
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" --- Basic ------------------------------------------------------------------
set nocompatible                   " Mark as not VI compatibile
set nomodeline                     " Fix security vulnerability
set backspace=indent,eol,start     " Sensible backspace
set complete-=i
set encoding=UTF-8                 " UTF-8 encoding
set t_Co=256                       " 256 colors
set shell=zsh
set autoread                       " Refresh on file external update
" --- Search -----------------------------------------------------------------
set hlsearch                       " Highlight search results
set incsearch                      " Incremental search
set ignorecase                     " Case-insensitive search
set smartcase                      " ...unless query has capital letters
set magic                          " Enable regex
set gdefault                       " Global search/replace w/o flag

" --- Formatting --------------------------------------------------------------
set showmatch                      " Show matching brackets.
set conceallevel=1                 " Allow concealing
"set formatoptions+=o              " Continue comment marker in new lines.
set textwidth=0                    " Hard-wrap long lines as you type them. // set this to 80~120 if required
set linespace=0                    " Set line-spacing to minimum.

" --- Windowing --------------------------------------------------------------
set splitbelow                     " Horizontal split below current.
set splitright                     " Vertical split to right of current.

" --- Scrolling --------------------------------------------------------------
if !&scrolloff | set scrolloff=3   " Show next 3 lines while scrolling.
endif
if !&sidescrolloff                 " Show next 5 columns while side-scrolling.
    set sidescroll=1
    set sidescrolloff=8
endif

" --- Behavior ---------------------------------------------------------------
set lazyredraw                     " Redraw only when needed (speed)
set autoread                       " Auto-read
set nobackup                       " No backup files
set noswapfile                     " No swap files
set noerrorbells                   " No beeps.
set title                          " Show title in title bar
set titleold=                      " Restore old title on exit
set wildignore=*.swp,*.bak,*.pyc,*.class
set ttyfast                        " Smoother changes
set autochdir                      " Switch to current file's dir
set showbreak=...                  " Mark line breaks with elipsis
set shortmess+=I                   " No intro message
set iskeyword-=_                   " Treat snake_case as separate words
set iskeyword-=-                   " Treat dash-case as separate words
set iskeyword-=#                   " Treat # as separate words
" set shellcmdflag=-ic               " Load shell config for :! (aliases)
if has("autocmd")
    " Autoindent on Save/Load shell script
    autocmd BufRead,BufWritePre *.sh normal gg=G
    " Restore position when opening
    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
" Persistent Undo
" Keep undo history across sessions, by storing in file.
if has('persistent_undo')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif
" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>
" Auto resize splits when resizing window
autocmd VimResized * wincmd =

" --- Theme/Styling ----------------------------------------------------------
source ~/.vim/ui.vim

" --- Mouse ------------------------------------------------------------------
set mouse=a                        " set mouse=nvic
set clipboard=unnamedplus          " WSL clipboard in p buffer

" -----------------------------------------------------------------------------
"  Plugins
" -----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'neovim/pynvim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'justinmk/vim-sneak'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'webastien/vim-ctags'

" Linting
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'

" Completion
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'Shougo/neco-syntax'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'ternjs/tern_for_vim'
Plug 'davidhalter/jedi-vim'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-zsh'
Plug 'Shougo/echodoc.vim'
" Snippets
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
Plug 'jvanja/vim-bootstrap4-snippets'
Plug 'epilande/vim-react-snippets'
" Tags
Plug 'ludovicchabant/vim-gutentags'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

" Start page
Plug 'mhinz/vim-startify'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Templates
Plug 'tibabit/vim-templates'

" Languages
Plug 'python-mode/python-mode', { 'branch': 'develop' }

" Icons
Plug 'ryanoasis/vim-devicons'

" Colors
Plug 'chrisbra/Colorizer'

" Colorschemes
Plug 'sjl/badwolf'
Plug 'dracula/vim'
Plug 'whatyouhide/vim-gotham'
Plug 'tyrannicaltoucan/vim-deep-space'



" Running Code
Plug 'skywind3000/asyncrun.vim'
call plug#end()

" -----------------------------------------------------------------------------
"  Sources
" -----------------------------------------------------------------------------
source ~/.dotfiles/vim/indentation.vim
source ~/.dotfiles/vim/lines.vim
source ~/.dotfiles/vim/lint.vim
source ~/.dotfiles/vim/statusline.vim
source ~/.dotfiles/vim/complete.vim
source ~/.dotfiles/vim/snippets.vim
source ~/.dotfiles/vim/templates.vim
source ~/.dotfiles/vim/fold.vim
source ~/.dotfiles/vim/run.vim
" -----------------------------------------------------------------------------
" Plugin Configuration
" -----------------------------------------------------------------------------
" NERDTree
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1                                   " Show hidden files
let NERDTreeMouseMode=2                                    " Click to fold, Double click to open
let NERDTreeQuitOnOpen = 1                                 " Quit NERDTree when file opened
let NERDTreeAutoDeleteBuffer = 1                           " Delete buffer of file deleted in NT
let NERDTreeMinimalUI=1                                    " Cleaner UI (no help)
let NERDTreeDirArrows=1                                    " Show arrows in tree
let g:NERDTreeFileExtensionHighlightFullName = 1           " Highlight full filename (not just icon)
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeIgnore = ['\.pyc$', '\.o$', '^\.git$', '__pycache__'] " Hide files in NT

" Python Mode
let g:pymode_python = 'python3'
let g:pymode=1
let g:pymode_doc_key='?'
let g:pymode_breakpoint_key='<leader>b'
let g:pymode_run_bind='<F5>'
let g:pymode_folding=1
let g:pymode_indent=1
let g:pymode_run=1

" -----------------------------------------------------------------------------
"  Filetypes
" -----------------------------------------------------------------------------
let g:jsx_ext_required = 0                                 " Allow JSX in normal JS files
augroup python_files " {{{
    au!
    autocmd filetype python setlocal textwidth=78
    autocmd filetype python match ErrorMsg '\%>120v.\+'
    autocmd filetype python setlocal formatoptions-=t      " Disable autowrapping
    autocmd filetype python noremap <buffer> <F5> :w<CR>:!python3 %<CR>
    autocmd filetype python inoremap <buffer> <F5> <Esc>:w<CR>:!python3 %<CR>
    autocmd filetype python noremap <buffer> <S-F5> :w<CR>:!ipython %<CR>
    autocmd filetype python inoremap <buffer> <S-F5> <Esc>:w<CR>:!ipython %<CR>
augroup end " }}}
augroup js_files " {{{
    au!
    autocmd filetype javascript setlocal foldmethod=syntax
augroup end " }}}
autocmd BufNewFile,BufRead *.txt,*.md,*.tex setlocal wrap
" -----------------------------------------------------------------------------
"  On Enter
" -----------------------------------------------------------------------------
autocmd BufWritePost *.js silent! AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

" -----------------------------------------------------------------------------
"  Mappings
" -----------------------------------------------------------------------------
let mapleader="\<SPACE>"
" --- Files ----------------------------------------------------------------
" ------ Show files on ;
" map ; :Files<CR>
" ------ Show files on F
map <C-F> :FZF<CR>
" ------ Save on leader w
nnoremap <Leader>w :w<CR>
inoremap q: :q
command! W w
" ------ CTRL-M toggles tagbar
nmap <C-m> :TagbarToggle<CR>
" ------ CTRL-N toggles NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" ------ ENTER starts vim command
nnoremap <CR> :
nnoremap ; :
nmap <Leader><Leader> <c-^>
" --- Standard shortcuts ---------------------------------------------------
noremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i
" noremap <C-f> /
" --- Undo/Redo ------------------------------------------------------------
nnoremap U <C-r>
noremap <C-z> u
noremap <C-y> <C-r>
" --- Code Execution -------------------------------------------------------
" noremap <F5>
" noremap <F6>
" --- Selection ------------------------------------------------------------
inoremap <C-S-left> <Esc>viw
inoremap <C-S-right> <Esc>viw
inoremap <C-S-down> <Esc>viw
inoremap <C-S-up> <Esc>viw
nnoremap <C-S-left> <Esc>viw
nnoremap <C-S-right> <Esc>viw
nnoremap <C-S-down> <Esc>viw
nnoremap <C-S-up> <Esc>viw

nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>
" Select all
map <leader>sa ggvG$

inoremap jj <Esc>
inoremap jk <Esc>
inoremap kk <Esc>
nnoremap 0 ^
inoremap <C-a> <Home>
inoremap <C-e> <End>
" --- Indentation -----------------------------------------------------------
nnoremap > >>
nnoremap < <<
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv

" --- Git -------------------------------------------------------------------
nnoremap <leader>gaa :Git add .<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gl :Gpull<CR>
nnoremap <leader>gb  :Gblame<CR>
nnoremap <leader>gst :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>glg :Glog<CR>
" --- Folding ---------------------------------------------------------------
nnoremap zz za
inoremap <C-z> za
" --- Copy/Paste ------------------------------------------------------------
nnoremap Y y$
nnoremap D d$
nnoremap <C-C> yy
nnoremap <C-x> dd
" --- Autoformat ------------------------------------------------------------
noremap <F3> :Autoformat<CR>
" --- Linting ---------------------------------------------------------------
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
" --- Windowing -------------------------------------------------------------
noremap <C-w>- :split<CR>
noremap <C-w>\| :vsplit<CR>
noremap <C-w>n :NERDTreeToggle<CR>
" --- Utilities -------------------------------------------------------------
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
    \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
    \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
