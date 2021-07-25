let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
"
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Prettier for UX-languages
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'typescript': ['prettier'],
\}

let g:ale_fix_on_save = 1
