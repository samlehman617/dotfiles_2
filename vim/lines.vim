" Line Numbers
set number                " Show the line numbers on the left side.
set ruler                 " Show the line and column numbers of the cursor.
set cursorline            " Highlight line cursor is on
set cursorcolumn          " Highlight column cursor is on
set numberwidth=3         " Set width of line number column
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
