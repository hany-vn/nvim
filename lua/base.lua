local opt = vim.opt

opt.number = true
opt.relativenumber = true

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.scrolloff = 5
opt.sidescrolloff = 5

opt.hlsearch = true
opt.incsearch = true

opt.mouse = 'a'
opt.clipboard:append('unnamedplus')

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.ignorecase = true
opt.smartcase = true

opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true

opt.signcolumn = 'yes'
opt.list = true

opt.cursorline = true
opt.termguicolors = true

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 300
    })
  end
})

opt.whichwrap = 'h,l'

opt.updatetime = 300
opt.timeoutlen = 500

-- Background transformer
vim.cmd [[
    highlight Normal guibg=NONE ctermbg=NONE
]]

vim.notify = function() end                                                   -- Overwrite function to turn off all errors (codeium)
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true }) -- CMD
vim.api.nvim_set_keymap('n', '<C-/>', 'I--<Esc>', { noremap = true })
vim.cmd("hi FloatBorder guibg=NONE guifg=#C0C0C0")                            -- Disable border cmd
