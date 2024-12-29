require 'core.options'
require 'core.keymaps'

-- Install Lazyvim Plugin manager
-- Info: https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
	local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
	if vim.v.shell_error ~=0 then
		error('Error cloning lazy.nvim:\n' .. out)
	end
end 
vim.opt.rtp:prepend(lazypath)

-- Check current plugin status :Lazy
-- Update plugins :Lazy update

-- Here is where you install your plugins
require('lazy').setup({
require('plugins.neotree'),
require('plugins.bufferline'),
require('plugins.lualine'),
require('plugins.treesitter'),
require('plugins.telescope'),
require('plugins.autocompletion'),
require('plugins.gitsigns'),
require('plugins.misc'),
require('plugins.dashboard'),
require('plugins.catpuccin'),
})
