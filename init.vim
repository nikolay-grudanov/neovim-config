if exists('g.vscode')
  " VS Code
  source /home/grudanov/.config/nvim/vscode/plugins.vim
  source /home/grudanov/.config/nvim/vscode/key-map.vim
else
" Nvim
  " Ссылки на файлы с конфигами
  "-------------------------------------------------------------
  source /home/grudanov/.config/nvim/nvim-setting/general.vim
  "Ниже много заимствования из Neovim-from-scratch (всё почти копипаст)
  source /home/grudanov/.config/nvim/nvim-setting/lua/alpha.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/autocommands.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/autopairs.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/bufferline.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/cmp.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/colorscheme.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/comment.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/gitsigns.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/impatient.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/indentline.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/keymaps.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/lualine.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/nvim-tree.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/options.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/plugins.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/project.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/telescope.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/toggleterm.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/treesitter.lua
  source /home/grudanov/.config/nvim/nvim-setting/lua/whichkey.lua
  "-------------------------------------------------------------------------

  " Глобальные переменные 
  "-------------------------------------------------------------------------
  let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
  let vim_markdown_preview_github=1 
  "-------------------------------------------------------------------------
  " Настройки
  "-------------------------------------------------------------------------
  :set number "Нумерация строк
  :set relativenumber "Нумерация отностительно курсора вверх и вниз
  :set autoindent
  :set tabstop=4
  :set shiftwidth=4
  :set smarttab
  :set softtabstop=4
  :set mouse=a
  :set encoding=utf-8
  "-------------------------------------------------------------------------
end
