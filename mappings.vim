
" Make the terminal usable
tnoremap <Esc> <C-\><C-n>

" Toggle nerdtree with F2
map <F2> :NERDTreeToggle <CR>
map <F12> <Plug>(coc-definition)
map <S-F12> <Plug>(coc-implementation)
map <a-cr> :CocCommand actions.open <CR>
map <F3> :Rg <CR>
map <F4> :GFiles <CR>

set ts=2
set shiftwidth=2
set et

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

set completeopt=longest,menuone

augroup CocGroup
  autocmd!
  autocmd BufNew,BufRead *.go execute "CocDisable"
augroup end
