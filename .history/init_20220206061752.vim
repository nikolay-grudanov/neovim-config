
if exists('g.vscode')
  " VS Code
  source /home/grudanov/.config/nvim/vscode/setting.vim
  source /home/grudanov/.config/nvim/vscode/key-map.vim
else
" Nvim 
  source /home/grudanov/.config/nvim/nvim-setting/general.vim
  source /home/grudanov/.config/nvim/nvim-setting/keymaps.lua
end
