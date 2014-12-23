if exists('g:loaded_textobj_cssprop')
  finish
endif

function! s:select_i()
  call search('\v[;{]', 'b')
  call search(':')
  call search('\S')
  let l:start = getpos('.')
  call search('\v[;}]')
  call search('\S', 'b')
  let l:end = getpos('.')
  return ['v', l:start, l:end]
endfunction

function! s:select_a()
  call search('\v[;{]', 'b')
  normal! w
  let l:start = getpos('.')
  call search('\v[;}]')
  if getline('.')[col('.')-1] == '}'
    call search('\S', 'b')
  endif
  let l:end = getpos('.')
  return ['v', l:start, l:end]
endfunction

call textobj#user#plugin('cssprop', {
\   '-': {
\     '*sfile*': expand('<sfile>:p'),
\     'select-a': 'aç', '*select-a-function*': 's:select_a',
\     'select-i': 'iç', '*select-i-function*': 's:select_i',
\   },
\})

let g:loaded_textobj_cssprop = 1

" vim:fdl=0 fdm=marker:ts=2 sw=2 sts=0:
