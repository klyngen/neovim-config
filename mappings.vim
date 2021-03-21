
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

set completeopt=longest,menuone
