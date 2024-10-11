require('Comment').setup()

require('gitsigns').setup {
  signs                        = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signs_staged                 = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signs_staged_enable          = true,
  signcolumn                   = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl                        = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl                       = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff                    = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir                 = {
    follow_files = true
  },
  auto_attach                  = true,
  attach_to_untracked          = false,
  current_line_blame           = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts      = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 0,
    ignore_whitespace = false,
    virt_text_priority = 100,
    use_focus = true,
  },
  current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
  sign_priority                = 6,
  update_debounce              = 100,
  status_formatter             = nil,   -- Use default
  max_file_length              = 40000, -- Disable if file is longer than this (in lines)
  preview_config               = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },

  on_attach                    = function(bufnr)
    local gitsigns = require('gitsigns')
    gitsigns.toggle_current_line_blame(); -- Show commit created


    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Actions
    map('n', '<leader>ti', function() gitsigns.blame_line { full = true } end) -- Check where it was created
    map('n', '<leader>hd', function() gitsigns.diffthis('~') end)
    vim.api.nvim_set_keymap(
      'n',
      '<leader>h',
      '<C-w>h:q<CR>', -- Chuyển sang cửa sổ bên trái và thoát cửa sổ hiện tại
      { noremap = true, silent = true }
    )
  end
}

require('beacon').setup({
  enable = true,
  size = 40,
  fade = true,
  minimal_jump = 2,
  show_jumps = true,
  focus_gained = true,
  shrink = true,
  timeout = 1000,
  ignore_buffers = {},
  ignore_filetypes = {},
})

require("supermaven-nvim").setup({
  -- config supermaven-nvim
})
