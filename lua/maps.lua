vim.g.mapleader = ' '
local keymap = vim.keymap

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>x', '<cmd>x<cr>')

keymap.set('n', '<c-a>', 'gg<S-v>G')

keymap.set('n', '<leader>s', ':vsplit<Return><C-w>w', { silent = true })
keymap.set('n', 'f', '<C-w>w')

keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')

keymap.set('n', '<c-h>', '10h')
keymap.set('n', '<c-l>', '10l')
keymap.set('n', '<c-d>', '10j')
keymap.set('n', '<c-u>', '10k')
