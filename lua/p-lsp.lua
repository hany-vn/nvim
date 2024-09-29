local opts = { noremap = true, silent = true }
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

local on_attach = function(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', bufopts)
  vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, bufopts)

  -- Format on save
  vim.api.nvim_create_autocmd('BufWritePre', {
    group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end
  })
end


local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_config = {
  capabilities = capabilities,
  on_attach = function(_, bufnr)
    on_attach(_, bufnr)
  end
}

require('mason-lspconfig').setup_handlers({
  function(server_name)
    require('lspconfig')[server_name].setup(lsp_config)
  end,
  lua_ls = function()
    require('lspconfig').lua_ls.setup(vim.tbl_extend('force', lsp_config, {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }))
  end,
  rust_analyzer = function()
    require 'lspconfig'.rust_analyzer.setup(vim.tbl_extend('force', lsp_config, {
      settings = {
        ['rust-analyzer'] = {
          diagnostics = {
            enable = false,
          }
        }
      },
      on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true }
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', ':!cargo run<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>q', ':!cargo build<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>c', ':!cargo check<CR>', opts)
      end
    }))
  end,
  ts_ls = function()
    require 'lspconfig'.ts_ls.setup(vim.tbl_extend('force', lsp_config, {
      filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
        "html",
        "json"
      },
      on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true }
        local project_root = client.config.root_dir
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', ':!cd ' .. project_root .. ' && npm start<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>q', ':!cd ' .. project_root .. ' && npm run build<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>c', ':!cd ' .. project_root .. ' && npm run test<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>l', ':!cd ' .. project_root .. ' && npm run dev<CR>', opts)
      end

    }))
  end
})
