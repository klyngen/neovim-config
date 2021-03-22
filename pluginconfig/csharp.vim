augroup CocGroup
  autocmd!
  autocmd BufNew,BufRead *.cs execute "CocDisable"
augroup end

au filetype cs map <F9> :OmniSharpDocumentation <CR>
au filetype cs map <F12> :OmniSharpGotoDefinition <CR>
au filetype cs map <S-F12> :OmniSharpFindImplementations <CR>
au filetype cs map <a-cr> :OmniSharpGetCodeActions <CR>

au CursorHold *.cs OmniSharpTypeLookup

let g:OmniSharp_selector_ui = 'fzf'    " Use fzf
let g:OmniSharp_selector_findusages = 'fzf'
let g:OmniSharp_server_stdio = 1

let g:OmniSharp_diagnostic_exclude_paths = [
\ 'obj\\',
\ '[Tt]emp\\',
\ '\.nuget\\',
\ '\<AssemblyInfo\.cs\>'
\]


let g:OmniSharp_server_use_mono = 0
