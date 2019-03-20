" Snippets
" if popup_visible -> cycles to next item
" else if expandable_or_jumpable -> expands_or_jumps
" else returns a normal TAB
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Expands or completes the selected snippet/item in the popup menu
imap <expr><silent><CR> pumvisible() ? deoplete#mappings#close_popup() .
      \ "\<Plug>(neosnippet_jump_or_expand)" : "\<CR>"
smap <silent><CR> <Plug>(neosnippet_jump_or_expand)

let g:neosnippet#enable_completed_snippet = 1
let g:neosnippet#enable_snipmate_compatibility = 1
set conceallevel=2
set concealcursor=niv
" Disable suggestions in comments and strings
call deoplete#custom#source('_',
    \ 'disabled_syntaxes', ['Comment', 'String'])

" Ultisnips
" let g:UltiSnipsUsePythonVersion = 3
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-right>"
" let g:UltiSnipsJumpBackwardTrigger="<c-left>"
" let g:UltiSnipsSnippetDirectories=['UltiSnips', 'snippets']
"
