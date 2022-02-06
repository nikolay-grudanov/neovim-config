if exists('g.vscode')
  " VS Code
  source /home/grudanov/.config/nvim/vscode/plugins.vim
  source /home/grudanov/.config/nvim/vscode/key-map.vim
else
" Nvim 
  " source /home/grudanov/.config/nvim/nvim-setting/general.vim
  source /home/grudanov/.config/nvim/nvim-setting/lua/keymaps.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/alpha.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/autocommands.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/autopairs.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/bufferline.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/cmp.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/colorscheme.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/comment.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/nvim-tree.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/plugins.lua
end
