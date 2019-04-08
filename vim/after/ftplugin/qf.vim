" Author        : Sam Lehman
" Created       : 05/04/2019
" License       : MIT
" Description   :
setlocal nonumber
setlocal norelativenumber
setlocal colorcolumn=
set nonumber
set norelativenumber
set colorcolumn=
"
" Hide signcolumn
set signcolumn=no

" Hide extra grep details
syntax match ConcealedDetails /\v^[^|]*\|[^|]*\| / conceal
syntax match ConcealedDetails /\v(%1l)\zs\[\p+\]\ze$/ conceal
" syntax match ConcealedDetails /\v(\%0l)\zs\[\p+\]\ze$/ conceal
set conceallevel=2
set concealcursor=nvic

" Remove ugly ass underline
highlight QuickFixLine cterm=None

" Highlight ESLint output
highlight QuickFixWarning ctermfg=yellow
highlight QuickFixError ctermfg=196
highlight QuickFixErrorName ctermfg=blue
highlight QuickFixErrorDesc ctermfg=gray
highlight QuickFixVar ctermfg=blue
highlight QuickFixLineNr ctermfg=darkgreen
highlight QuickFixPath cterm=underline ctermfg=darkgray
" highlight QuickFixCommand ctermfg=244
syntax match QuickFixWarning   /\v(\s+)\zs(\a*)[wW]arn(ings?)?(\a*)\ze(\s+|\))/
syntax match QuickFixError     /\v(\s+)\zs(\a*)[eE](rr(ors?)?|xceptions?)(\a*)\ze(\s+|,)/
syntax match QuickFixErrorName /\v(\s+)\zs(\a+)(-\a+)+\ze/
syntax match QuickFixErrorDesc /\v\zs(\a+)((\s)(\a+)+)+\ze/
syntax match QuickFixVar       /\v(\s+)\zs'(\i+)'\ze/
" syntax match QuickFixVar       /\v(\s+)\zs'(\i+)'\ze(\s+)/
syntax match QuickFixLineNr    /\v(\s*)\zs(\d+):(\d+)\ze(\s*)/
syntax match QuickFixPath      /\v((\f+)(\/))+.\f+/
" match QuickFixErrorName /(  )+ ?(\w+)(-\w+)*(\n|$)+/
" syntax match QuickFixErrorDesc /(  |\t)+(([\w\d]+)( ))+([\w\d]+)(  |\t)+/
