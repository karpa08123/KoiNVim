return{
	{'folke/which-key.nvim'},
	{'folke/todo-comments.nvim'},
	{
		'norcalli/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup()
		end,
	},  
    {'christoomey/vim-tmux-navigator'},
    {
        'windwp/nvim-autopairs',
        config = true,
        opts = {
            disable_in_replace_mode = true,
            enable_moveright = true,
            enable_afterquote = true,
            enable_check_bracket_line = true,
        }
    },
    {
        "OXY2DEV/markview.nvim",
        lazy = false
    },
}
