if &filetype ==# 'go' 
  " MAP F12 and ctrl F12
endif


au filetype go map <F12> :GoDef <CR>
au filetype go map <F8> :DlvToggleBreakpoint <CR>
au filetype go inoremap <buffer> . .<C-x><C-o>

let g:go_fmt_command = "goimports"   
let g:go_auto_type_info = 1           
let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

augroup CocGroup
  autocmd!
  autocmd BufNew,BufRead *.go execute "CocDisable"
augroup end
