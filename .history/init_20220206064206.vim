if exists('g.vscode')
  " VS Code
  source /home/grudanov/.config/nvim/vscode/plugins.vim
  source /home/grudanov/.config/nvim/vscode/key-map.vim
else
" Nvim 
  source /home/grudanov/.config/nvim/nvim-setting/general.lua
end
