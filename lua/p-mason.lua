require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'sumneko_lua',
    'tsserver',
    'graphql',
    'rust_analyzer',
    'cssls',
    'jsonls',
    'html',
    'emmet_ls',
    'intelephense'
  },
  automatic_installation = true,
})
