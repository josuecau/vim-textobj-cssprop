" cssprop.vim
"
" Author: iNo
" Version: 1.0
" Licence: MIT license
" LastUpdated:2013/09/11 13:34:02.
" file created in 2013/09/11 09:45:57.
"

if exists('g:loaded_textobj_cssprop')
  finish
endif

call textobj#user#plugin('cssprop', {
\   'prop': {
\     '*pattern*': ['\<[^[:blank:]]\+\>:\s*', ';'],
\     'select-a': 'ac',
\     'select-i': 'ic',
\   },
\})

let loaded_textobj_cssprop = 1

" vim:fdl=0 fdm=marker:ts=2 sw=2 sts=0:
