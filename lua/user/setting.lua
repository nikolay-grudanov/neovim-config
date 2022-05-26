local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options
-- Глобальные переменные 
---------------------------------------------------------------------------
g.vimspector_enable_mappings = 'VISUAL_STUDIO'
---------------------------------------------------------------------------
-- Настройки
---------------------------------------------------------------------------
opt.number = true --Нумерация строк
opt.relativenumber = true --Нумерация относительно курсора вверх и вниз
opt.colorcolumn = '80' -- Разделитель на 80 символов
opt.autoindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.softtabstop = 4
-- opt.spelllang = { 'en', 'ru' }    -- Словари рус eng
cmd [[  :set spell spelllang=en,ru]]
cmd [[:set keymap=russian-jcukenwin]]
opt.termguicolors = true --  24-bit RGB colors
opt.iminsert = 0 -- Чтобы при старте ввод был на английском, а не русском (start > i)
opt.imsearch = 0 -- Чтобы при старте поиск был на английском, а не русском (start > /)
-- Дополнительно можно добавить  Чтобы вместо Ctrl-^ нажимать Ctrl-L
cmd [[:inoremap <C-l> <C-^>]]
-- Запоминает где nvim последний раз редактировал файл
cmd [[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]
-- Подсвечивает на доли секунды скопированную часть текста
exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]], false)
-- Направление перевода с русского на английский
g.translate_source = 'ru'
g.translate_target = 'en'
--------------------------------------------------------------------------
--NEOVIDE
g.neovide_cursor_vfx_mode = "sonicboom"
opt.guifont = {'Hack Nerd Font Mono:h16'}
