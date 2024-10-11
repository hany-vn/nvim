require('fine-cmdline').setup({
  cmdline = {
    enable_keymaps = true,
    smart_history = true,
    prompt = ' 🐰 '
  },
  popup = {
    position = {
      row = '15%',
      col = '50%',
    },
    relative = "editor",
    size = {
      width = '60%',
    },
    border = {
      style = 'rounded',
      padding = { 0, 2 },
    },
    win_options = {
      -- winblend = 20,
      winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
    },
  },
  hooks = {
    before_mount = function(input)
      -- code
    end,
    after_mount = function(input)
      -- code
    end,
    set_keymaps = function(imap, feedkeys)
      -- code
    end
  }
})
vim.cmd("hi FloatBorder guibg=NONE guifg=NONE") -- Disable border cmd
