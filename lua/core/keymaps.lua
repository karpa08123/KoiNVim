-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in normal and visual modes
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', {silent = true})

-- For conciseness
local opts = {noremap = true, silent = true}

-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- save file without auto-formating
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- quit file
vim.keymap.set('n', '<leader>q', '<cmd> q <CR>', opts)

-- resize with arrows
vim.keymap.set('n', '<S-Left>', ':vertical resize +2<CR>', opts)
vim.keymap.set('n', '<S-Right>', ':vertical resize -2<CR>', opts)


-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically
vim.keymap.set('n', '<leader>se', '<C-w>=v', opts) -- makes window equal width and height

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts)   -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

-- Tabs
vim.keymap.set('n', '<C-n>', ':tabnew<CR>', opts)   -- open new tab
vim.keymap.set('n', '<C-x>', ':tabclose<CR>', opts) -- close current tab
vim.keymap.set('n', '<C-l>', ':tabn<CR>', opts)     --  go to next tab
vim.keymap.set('n', '<C-h>', ':tabp<CR>', opts)     --  go to previous tab
vim.keymap.set('n', '<C-Left>', ':tabn<CR>', opts)     --  go to next tab
vim.keymap.set('n', '<C-Right>', ':tabp<CR>', opts)     --  go to previous tab

-- Navigate between splits
vim.keymap.set('n', '<A-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<A-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<A-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<A-l>', ':wincmd l<CR>', opts)

vim.keymap.set('n', '<A-Down>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<A-Up>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<A-Left>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<A-Right>', ':wincmd l<CR>', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

vim.keymap.set('n', 'U', '<C-r>', opts)

-- Tmux
vim.keymap.set('n', '<C-S>h', '<cmd> TmuxNavigateLeft<CR>', opts)
vim.keymap.set('n', '<C-S>l', '<cmd> TmuxNavigateRight<CR>', opts)
vim.keymap.set('n', '<C-S>k', '<cmd> TmuxNavigateUp<CR>', opts)
vim.keymap.set('n', '<C-S>j', '<cmd> TmuxNavigateDown<CR>', opts)
