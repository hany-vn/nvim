vim.cmd('colorscheme palenight')

-- Background transformer
vim.cmd [[
    highlight Normal guibg=NONE ctermbg=NONE
]]

vim.cmd([[
  hi TelescopeNormal guibg=NONE
  hi TelescopeBorder guibg=NONE
  hi TelescopePromptNormal guibg=NONE
  hi TelescopePromptBorder guibg=NONE
  hi TelescopeResultsNormal guibg=NONE
  hi TelescopeResultsBorder guibg=NONE
  hi TelescopePreviewNormal guibg=NONE
  hi TelescopePreviewBorder guibg=NONE
]])

vim.fn.sign_define({
  {
    name = 'DiagnosticSignError',
    text = '',
    texthl = 'DiagnosticSignError',
    linehl = 'ErrorLine',
  },
  {
    name = 'DiagnosticSignWarn',
    text = '',
    texthl = 'DiagnosticSignWarn',
    linehl = 'WarningLine',
  },
  {
    name = 'DiagnosticSignInfo',
    text = '',
    texthl = 'DiagnosticSignInfo',
    linehl = 'InfoLine',
  },
  {
    name = 'DiagnosticSignHint',
    text = '',
    texthl = 'DiagnosticSignHint',
    linehl = 'HintLine',
  },
})
