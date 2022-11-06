local g = vim.g
local fn = vim.fn

g.dashboard_default_executive = 'telescope'

g.dashboard_session_directory = vim.fn.stdpath('data') .. '/sessions'

 g.dashboard_custom_header = {
 " ",
 " ",
 "░██████╗░░░░░░░███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗",
 "██╔════╝░░░░░░░████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║",
 "██║░░██╗░█████╗██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║",
 "██║░░╚██╗╚════╝██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║",
 "╚██████╔╝░░░░░░██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║",
 "░╚═════╝░░░░░░░╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝",
 " ",

 }

g.dashboard_custom_section = {
  a = { description = {  "  Find File" }, command = "Telescope find_files" },
  b = { description = {  icons.clock2 .. " Recently used files " }, command = "Telescope oldfiles" },
 -- c = { description = {  icons.file2 .. " Find Word " }, command = "Telescope live_grep" },
  d = { description = {  icons.pluse .. " New File " }, command = "DashboardNewFile" },
  e = { description = {  icons.bookmark .. " Bookmarks " }, command = "Telescope marks" },
  -- f = { description = {  icons.last .. " Last Session " }, command = "SessionLoad" },
  g = { description = {  icons.file2 .. " Find project " }, command = "Telescope projects"}, 
  h = { description = {  icons.config .. " Configuration " }, command = ":e ~/.config/nvim/iinit.lua"},
  i = { description = {  icons.error2 .. " Quit Neovim " }, command = ":qa"},
}

local plugins_count = fn.len(fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))

g.dashboard_custom_footer = {
  "G-NeoVim loaded " .. plugins_count .. " plugins ",
  " ",
 "  github.com/nikolay-grudanov/neovim-config"  
}

