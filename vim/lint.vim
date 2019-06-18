" Linting
let g:ale_linters = {
            \ 'python': ['flake8'],
            \ }
let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'python': ['isort', 'flake8'],
            \ 'javascript': ['prettier', 'eslint']
            \}
let g:ale_fix_on_save=1
let g:ale_warn_about_trailing_whitespace = 0

let g:ale_completion_enabled = 1

" Error and warning signs.
let g:ale_sign_column_always = 1
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'
let g:ale_echo_ms_error_str = '⤫'
let g:ale_echo_ms_warning_str = '⚠'
"let g:airline#extensions#ale#enabled = 1

" --- Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "→"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"

let g:pymode_python = 'python3'
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Toggle concealing characters
map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
