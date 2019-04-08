set foldcolumn=2          " Add column for folds

if exists('&signcolumn')
    set signcolumn=yes    " Add column for Git and ALE
else
    let g:gitgutter_sign_column_always = 1
endif

augroup numbertoggle      " Show relative line numbers (hybrid if number is set)
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber    " Show hybrid numbers in normal mode
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber  " Show absolute numbers in insert mode
augroup END
