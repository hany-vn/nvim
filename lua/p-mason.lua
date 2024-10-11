require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'lua_ls',
    'rust_analyzer',
    'ts_ls',
    'intelephense'
  },
  automatic_installation = true,
})
