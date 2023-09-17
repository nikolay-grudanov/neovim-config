-- Сочетания клавиш
vim.keymap.set("n", "]c", function()
    require("todo-comments").jump_next()
end, { desc = "Next comment" })

vim.keymap.set("n", "[c", function()
    require("todo-comments").jump_prev()
end, { desc = "Previous comment" })

vim.keymap.set("n", "¬", function()
    require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1)
end, { desc = "Next buffer" })

vim.keymap.set("n", "˙", function()
    require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1))
end, { desc = "Previous buffer"})
