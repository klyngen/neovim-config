
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

" Becauce we dont need fancy separators
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep          = ''
let g:airline_left_alt_sep      = ''
let g:airline_right_sep         = ''
let g:airline_right_alt_sep     = ''

" Lets make typescript working...
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'


