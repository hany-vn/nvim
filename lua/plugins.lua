vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Package manager

  -- Mason
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'

  -- LSP
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind-nvim'

  -- Explore
  use 'nvim-tree/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'

  -- Theme
  use 'drewtempelmeyer/palenight.vim' -- Color

  -- Text
  use 'rmagatti/alternate-toggler'
  use 'windwp/nvim-autopairs'

  -- Lualine
  use 'nvim-lualine/lualine.nvim'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Bookmark
  use 'MattesGroeger/vim-bookmarks'
  use 'tom-anders/telescope-vim-bookmarks.nvim'

  -- Luasnip
  -- use 'L3MON4D3/LuaSnip'
  use({
    "L3MON4D3/LuaSnip",
    tag = "v2.*",
    run = "make install_jsregexp"
  })
  use 'saadparwaiz1/cmp_luasnip'

  -- Null
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'axelvc/template-string.nvim'

  -- Style
  use 'j-hui/fidget.nvim'
  use 'xiyaowong/nvim-transparent'
  use 'folke/todo-comments.nvim'
  use 'numToStr/Comment.nvim'

  -- Coc
  use { 'neoclide/coc.nvim', branch = 'release' }
end)
