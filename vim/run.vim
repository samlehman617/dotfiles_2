" Author        : Sam Lehman
" Created       : 14/11/2018
" License       : MIT
" Description   :

" Quick run via <F5>
nnoremap <F5> :call <SID>compile_and_run()<CR>

function! s:compile_and_run()
    exec 'w'
    if &filetype == 'c'
        exec "AsyncRun! gcc % -o %<; time ./%<"
    elseif &filetype == 'cpp'
       exec "AsyncRun! g++ -std=c++11 % -o %<; time ./%<"
    elseif &filetype == 'java'
       exec "AsyncRun! javac %; time java %<"
    elseif &filetype == 'sh'
       exec "AsyncRun! time bash %"
    elseif &filetype == 'python'
       exec "AsyncRun! time python %"
    endif
endfunction
augroup runOnSave
    autocmd BufWritePost *.py 
        \ call s:compile_and_run()
    autocmd User AsyncRunStop
        \ if g:asyncrun_status=='failure' |
        \   execute('call asyncrun#quickfix_toggle(8, 1)') |
        \ else |
        \   execute('call asyncrun#quickfix_toggle(8, 0)') |
        \ endif
augroup END

" Deprecated:
" augroup SPACEVIM_ASYNCRUN
"     autocmd!
"    " Automatically open the quickfix window
"     autocmd User AsyncRunStart call asyncrun#quickfix_toggle(15, 1)
" augroup END
"
" asyncrun now has an option for opening quickfix automatically
let g:asyncrun_open = 10
