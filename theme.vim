"" Background theme

colorscheme papaya

if (has("termguicolors"))
	  set termguicolors
endif



"" CONFIGURE THE STARTIFY PLUGIN
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_files_number = 4

let g:startify_lists = [
      \{ 'header': ['  Sessions'], 'type': 'sessions' },
      \{ 'header': ['   MRU'. getcwd()], 'type': 'dir' }, 
      \{ 'header': ['   MRU DIR'], 'type': 'files' } 
      \]
let g:startify_custom_header =
        \ startify#pad(split(system('fortune | cowsay -f moose'), '\n'))

set mouse=a
set number

" vim-airline
let g:airline_theme = 'luna'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1


" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

highlight clear SignColumn


" SET THE TAB LINE LIST
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
let indentLine_char = '|'


" Wildmenu
set wildmode=list:longest
set hidden
