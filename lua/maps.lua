vim.g.mapleader = ' '
local keymap = vim.keymap

-- Move faster
keymap.set('n', 'H', '10h')
keymap.set('n', 'L', '10l')
keymap.set('n', 'J', '10j')
keymap.set('n', 'K', '10k')

-- Select all
keymap.set('n', '<c-a>', 'gg<S-v>G')

-- Split screen
keymap.set('n', '<leader>s', ':vsplit<Return>', { silent = true })
keymap.set('n', 'f', '<C-w>w')

-- Save
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

-- Terminal
vim.api.nvim_set_keymap('n', '<leader>t', ':!', { noremap = true })
