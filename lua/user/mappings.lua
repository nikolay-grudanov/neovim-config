-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
  	["<leader>ba"] = { name = "All" },
    
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
 

  ---- Мой маппинг 
	  -- ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
	  -- ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
	  -- ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
	  -- ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
	  -- ["<leader>b]"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer tab" },
	  -- ["<leader>b["] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer tab" },
	  ["<leader>bay"] = { ":%y+<cr><Esc>", desc = "Copy all" },
	  ["<leader>bad"] = { "<cmd>%d <cr>", desc = "Delete all" },
	  -- ["<leader>bs"] = {"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>", desc = "Sort buffers"},
	  -- терминалы
    ["<leader>tm"] = { "<cmd>lua _MC_TOGGLE()<cr>", desc = "ToggleTerm MC"},
    ["<leader>td"] = { "<cmd>lua _LAZYDOCKER_TOGGLE()<cr>", desc = "ToggleTerm lazydocker"},
    ["<leader>tu"] = { "<cmd>lua _NCDU_TOGGLE()<cr>", desc = "ToggleTerm ncudu"},
    ["<leader>tH"] = { "<cmd>lua _HTOP_TOGGLE()<cr>", desc = "ToggleTerm htop"},
    -- search
    -- ["<leader>so"] = { "<cmd>Telescope oldfiles<cr>", desc = "Search old file" },
    -- ["<leader>sC"] = { "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme" },
	  ["<leader>fT"] = { "<cmd>TodoTelescope<cr>", desc = "TODO" },


  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
