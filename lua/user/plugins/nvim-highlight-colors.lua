return {

"brenoprata10/nvim-highlight-colors",
    opts = function(_, opts)
	   opts.setup({
		    enable_tailwind = true,
		    enable_named_colors = true,
	    })
	    return opts

    end,
}
