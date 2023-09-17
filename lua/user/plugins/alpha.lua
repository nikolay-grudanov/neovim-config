return {
		'goolord/alpha-nvim',
    	config = function ()
        	require'alpha'.setup(require'alpha.themes.dashboard'.config)
    	end,
  	  	opts = function(_, opts)
			opts.section.header.val = {
				"░██████╗░░░░░░░███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗",
				"██╔════╝░░░░░░░████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║",
				"██║░░██╗░█████╗██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║",
				"██║░░╚██╗╚════╝██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║",
				"╚██████╔╝░░░░░░██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║",
				"░╚═════╝░░░░░░░╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝",
				"....................Based on AstroNvim.........................",
			}
		    opts.section.header.opts.hl = "Include"
    		opts.section.footer.opts.hl = "Type"
			opts.section.buttons.opts.hl = "Keyword"

    	    local get_icon = require("astronvim.utils").get_icon
			opts.section.buttons.val = {
				opts.button("e", get_icon("FileNew", 2, true) .. " New file", ":ene <BAR> startinsert <CR>"),
				opts.button("r", get_icon("Refresh", 2, true) .. " Recently used files", ":Telescope oldfiles <CR>"),
				opts.button("f", get_icon("Search", 2, true) .. " Find file", ":Telescope find_files <CR>"),
				opts.button("p", "  Find project", ":Telescope projects <CR>"),
				opts.button("t", get_icon("WordFile", 2, true) .. " Find text", ":Telescope live_grep <CR>"),
				opts.button("b", get_icon("Bookmarks", 2, true) .. " Bookmarks ", ":Telescope marks <CR>"),
				opts.button("S", get_icon("Session", 2, true) .. " Last Session", ":SessionManager! load_last_session<CR>"),
				opts.button("c", get_icon("ActiveLSP", 2, true) .. " Configuration", ":e ~/.config/nvim/init.lua <CR>"),
				opts.button("C", "   Configuration local", ":e ~/.config/astronvim/lua/user/init.lua<CR>"),
				opts.button("q", get_icon("BufferClose", 2, true) .. " Quit Neovim", ":qa<CR>"),
			}

			local function footer()
				-- NOTE: requires the fortune-mod package to work
				-- local handle = io.popen("fortune")
				-- local fortune = handle:read("*a")
				-- handle:close()
				-- return fortune
				return get_icon("Git", 2, true) .. "github.com/nikolay-grudanov/neovim-config"
			end

			opts.section.footer.val = footer()

		    opts.config.layout = {
      	  	  { type = "padding", val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) } },
      	  	  opts.section.header,
      	  	  { type = "padding", val = 5 },
      	  	  opts.section.buttons,
      	  	  { type = "padding", val = 3 },
      	  	  opts.section.footer,
    		}


			return opts

		end,	
}

