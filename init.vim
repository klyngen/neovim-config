"" INCLUDE CONFIG RELATED TO PLUGINS
if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
endif


"" INCLUDE CONFIG RELATED TO COC
if filereadable(expand("~/.config/nvim/coc.vim"))
  source ~/.config/nvim/coc.vim
endif

"" INCLUDE CONFIG RELATED TO COC
if filereadable(expand("~/.config/nvim/fzf.vim"))
  source ~/.config/nvim/fzf.vim
endif

"" INCLUDE CONFIG RELATED TO LOOK AND FEEL
if filereadable(expand("~/.config/nvim/theme.vim"))
  source ~/.config/nvim/theme.vim
endif
"set runtimepath=~/.config/nvim/

if filereadable(expand("~/.config/nvim/mappings.vim"))
  source ~/.config/nvim/mappings.vim
endif

for f in split(glob('~/.config/nvim/pluginconfig/*.vim'), '\n')
  exe 'source' f
endfor
