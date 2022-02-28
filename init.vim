if exists('g:vscode')
  " VS Code
  source $HOME/.config/nvim/vscode/plugins.vim
  source $HOME/.config/nvim/vscode/key-map.vim
else
" Nvim
  " Ссылки на файлы с конфигами
  "-------------------------------------------------------------
  source $HOME/.config/nvim/nvim-setting/general.vim
  "Ниже много заимствования из Neovim-from-scratch (всё почти копипаст)
  "source $HOME/.config/nvim/nvim-setting/lua/alpha.lua
  source $HOME/.config/nvim/nvim-setting/lua/autocommands.lua
  source $HOME/.config/nvim/nvim-setting/lua/autopairs.lua
  source $HOME/.config/nvim/nvim-setting/lua/bufferline.lua
  source $HOME/.config/nvim/nvim-setting/lua/cmp.lua
  source $HOME/.config/nvim/nvim-setting/lua/colorscheme.lua
  source $HOME/.config/nvim/nvim-setting/lua/comment.lua
  source $HOME/.config/nvim/nvim-setting/lua/gitsigns.lua
  source $HOME/.config/nvim/nvim-setting/lua/impatient.lua
  source $HOME/.config/nvim/nvim-setting/lua/indentline.lua
  source $HOME/.config/nvim/nvim-setting/lua/keymaps.lua
  source $HOME/.config/nvim/nvim-setting/lua/lualine.lua
  source $HOME/.config/nvim/nvim-setting/lua/nvim-tree.lua
  source $HOME/.config/nvim/nvim-setting/lua/options.lua
  source $HOME/.config/nvim/nvim-setting/lua/plugins.lua
  source $HOME/.config/nvim/nvim-setting/lua/project.lua
  source $HOME/.config/nvim/nvim-setting/lua/telescope.lua
  source $HOME/.config/nvim/nvim-setting/lua/toggleterm.lua
  source $HOME/.config/nvim/nvim-setting/lua/treesitter.lua
  source $HOME/.config/nvim/nvim-setting/lua/whichkey.lua
  source $HOME/.config/nvim/nvim-setting/lua/dashboard.lua
  "-------------------------------------------------------------------------
  " Глобальные переменные 
  "-------------------------------------------------------------------------
  let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
  "-------------------------------------------------------------------------
  " Настройки
  "-------------------------------------------------------------------------
  :set number "Нумерация строк
  :set relativenumber "Нумерация относительно курсора вверх и вниз
  :set autoindent
  :set tabstop=4
  :set shiftwidth=4
  :set smarttab
  :set softtabstop=4
  :set mouse=a
  :set encoding=utf-8
  :set spell spelllang=en,ru
  :set shell=/usr/bin/zsh
  " TODO Исправить ошибку и седлать поддержку русского языка.
  ":set langmap=ёйцукенгшщзхъфывапролджэячсмитьбю;`qwertyuiop[]asdfghjkl\;'zxcvbnm\,.,ЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>
  "-------------------------------------------------------------------------
end
