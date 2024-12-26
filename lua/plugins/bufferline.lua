return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'moll/vim-bbye',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    -- vim.opt.linespace = 8

    require('bufferline').setup {
      options = {
        mode = 'buffers', -- set to "tabs" to only show tabpages instead
        themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
        numbers = 'none', -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        close_command = 'Bdelete! %d', -- can be a string | function, see "Mouse actions"
        right_mouse_command = 'Bdelete! %d', -- can be a string | function, see "Mouse actions"
        left_mouse_command = 'buffer %d', -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        -- buffer_close_icon = '󰅖',
        -- buffer_close_icon = '✗',
        --buffer_close_icon = '✕',
        close_icon = '',
        path_components = 1, -- Show only the file name without the directory
        modified_icon = '●',
        --left_trunc_marker = '',
        --right_trunc_marker = '',
        max_name_length = 30,
        max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
        tab_size = 21,
        diagnostics = true,
        diagnostics_update_in_insert = false,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		separator_style = 'slant',
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        show_tab_indicators = false,
        indicator = {
          --icon = '▎', -- this should be omitted if indicator style is not 'icon'
          style = 'none', -- Options: 'icon', 'underline', 'none'
        },
        icon_pinned = '󰐃',
        minimum_padding = 1,
        maximum_padding = 5,
        maximum_length = 15,
        sort_by = 'insert_at_end',
      },
      highlights = {
		close_button = {
			bg='#313244',
			fg='#cdd6f4',
		},
		modified = {
			bg='#313244',
			fg='#cdd6f4',
		},
		modified_selected = {
			bg='#45475a',
			fg='#cdd6f4',
		},
		close_button_selected = {
			bg='#45475a',
			fg='#cdd6f4',
		},
        separator = {
          fg = '#1e1e2e',
		  bg = '#313244',
        },
        buffer_selected = {
          bold = true,
          italic = false,
		  bg='#45475a',
        },
        buffer_visible = {
		  bg='#11111b',
        },
        separator_visible = {
			fg = '#1e1e2e',
			bg = '#11111b',
		},
		close_button_visible = {
			bg='#11111b',
			fg='#cdd6f4',
		},
        separator_selected = {
			fg = '#1e1e2e',
			bg = '#45475a',
		},
        background = {bg = '#313244'},
        fill = {bg='#1e1e2e'},
      },
    }

    -- Keymaps
    local opts = { noremap = true, silent = true, desc = 'Go to Buffer' }
  end,
}
