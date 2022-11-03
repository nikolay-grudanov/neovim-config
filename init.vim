if exists('g:vscode')
  " VS Code
  source $HOME/.config/nvim/vscode/key-map.vim
  source $HOME/.config/nvim/vscode/setting.vim
else
" Nvim
  " Ссылки на файлы с конфигами
  "-------------------------------------------------------------
  source $HOME/.config/nvim/iinit.lua
end
