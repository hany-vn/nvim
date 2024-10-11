vim.g.mapleader = ' '
local keymap = vim.keymap

-- Move faster
vim.api.nvim_set_keymap('n', 'H', '10h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', '10j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '10k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', '10l', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', 'H', '10h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', '10j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', '10k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'L', '10l', { noremap = true, silent = true })

-- Select all
keymap.set('n', '<c-a>', 'gg<S-v>G')

-- Split screen
keymap.set('n', '<leader>s', ':vsplit<Return>', { silent = true })
keymap.set('n', 'f', '<C-w>w')

-- Save
vim.api.nvim_set_keymap('n', '<leader>w', ':Format<CR>:w<CR>', { noremap = true, silent = true })

-- Terminal
vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>FineCmdline<CR>!', { noremap = true })
