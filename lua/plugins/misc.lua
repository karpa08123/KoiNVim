return{
	{'folke/which-key.nvim'},
	{'folke/todo-comments.nvim'},
	{
		'norcalli/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup()
		end,
	},  
	{'akinsho/toggleterm.nvim', version = "*", opts = {
		open_mapping = [[<C-`>]], -- Define la combinación para abrir/cerrar la terminal
		direction = "horizontal", -- Opcional: abre la terminal en un modo flotante
		close_on_exit = true, -- Cierra automáticamente la terminal cuando el proceso termina	
	}},
}
