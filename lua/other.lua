local term_initialized = false

require('Comment').setup()
require('toggleterm').setup({
  direction = 'float',
  open_mapping = [[<c-\>]],
  shell = "/bin/zsh",
  auto_scroll = true,
  on_create = function(term)
    if not term_initialized then
      term:clear()
      term_initialized = true
    end
  end
})
