
" Make the terminal usable
tnoremap <Esc> <C-\><C-n>

" Toggle nerdtree with F2
map <F2> :NERDTreeToggle <CR>
map <F12> <Plug>(coc-definition)
map <S-F12> <Plug>(coc-implementation)
map <a-cr> :CocCommand actions.open <CR>
map <F3> :Rg <CR>
map <F4> :GFiles <CR>
map <F5> :call vimspector#Launch()<CR>
map <F10> <Plug>VimspectorStepOver
map <F11> <Plug>VimspectorStepInto
map <F8> <Plug>VimspectorToggleBreakpoint

set ts=2
set shiftwidth=2
set et

set completeopt=longest,menuone
