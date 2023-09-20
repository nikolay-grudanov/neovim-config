-- Сочетания клавиш
vim.keymap.set("n", "]c", function()
    require("todo-comments").jump_next()
end, { desc = "Next comment" })

vim.keymap.set("n", "[c", function()
    require("todo-comments").jump_prev()
end, { desc = "Previous comment" })

-- Переключения табов через Alt+l Alt+h 

-- Mac
vim.keymap.set("n", "¬", function()
    require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1)
end, { desc = "Next buffer" })

vim.keymap.set("n", "˙", function()
    require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1))
end, { desc = "Previous buffer"})

-- Linux, Windows
vim.keymap.set("n", "<M-l>", function()
    require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1)
end, { desc = "Next buffer" })

vim.keymap.set("n", "<M-h>", function()
    require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1))
end, { desc = "Previous buffer"})
