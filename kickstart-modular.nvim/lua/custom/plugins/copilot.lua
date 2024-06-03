return {
  'github/copilot.vim',
  config = function()
    vim.keymap.set('i', '<C-y>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false
    })
    vim.g.copilot_no_tab_map = true

    vim.keymap.set('i', '<C-n>', 'copilot#Next()', {
      expr = true,
      replace_keycodes = false
    })

    vim.keymap.set('i', '<C-p>', 'copilot#Previous()', {
      expr = true,
      replace_keycodes = false
    })

    -- create a keymap that requests a suggestion
    vim.keymap.set('i', '<C-\\>', 'copilot#Request()', {
      expr = true,
      replace_keycodes = false
    })

    -- create a keymap that accepts next word
    vim.keymap.set('i', '<C-l>', 'copilot#Accept("\\<Space>")', {
      expr = true,
      replace_keycodes = false
    })

    -- create a keymap that accepts next line
    vim.keymap.set('i', '<C-j>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false
    })
  end
}
