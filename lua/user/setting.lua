local cmd = vim.cmd            -- execute Vim commands
local exec = vim.api.nvim_exec -- execute Vimscript
local g = vim.g                -- global variables
local opt = vim.opt            -- global/buffer/windows-scoped options
-- Глобальные переменные
---------------------------------------------------------------------------
-- g.vimspector_enable_mappings = 'VISUAL_STUDIO'
---------------------------------------------------------------------------
-- Настройки
---------------------------------------------------------------------------
cmd([[:set keymap=russian-jcukenwin]])
-- Дополнительно можно добавить  Чтобы вместо Ctrl-^ нажимать Ctrl-L
cmd([[:inoremap <C-l> <C-^>]])
opt.termguicolors = true --  24-bit RGB colors
opt.iminsert = 0         -- Чтобы при старте ввод был на английском, а не русском (start > i)
opt.imsearch = 0         -- Чтобы при старте поиск был на английском, а не русском (start > /)
-- Подсвечивает на доли секунды скопированную часть текста
exec(
	[[
    augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=150}
    augroup end
]],
	false
)
-- Направление перевода с русского на английский
-- g.translate_source = 'ru'
-- g.translate_target = 'en'

g.magma_image_provider = "kitty" -- Протокол для отображения картинок при использовании Магмы
--------------------------------------------------------------------------
-- Функции
-- Автоматическая смена нумерации
vim.api.nvim_create_autocmd("InsertEnter", {
	callback = function()
		vim.opt.relativenumber = false
	end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
	callback = function()
		vim.opt.relativenumber = true
	end,
})

--------------------------------------------------------------------------
