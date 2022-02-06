vim.cmd [[
try
--  colorscheme darkplus
  colorscheme dracula
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
