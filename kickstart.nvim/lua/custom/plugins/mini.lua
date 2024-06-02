return {
  'echasnovski/mini.nvim',
  config = function()
    -- Files
    local MiniFiles = require 'mini.files'
    local open = function()
      MiniFiles.open(vim.api.nvim_buf_get_name(0))
    end
    MiniFiles.setup {
      windows = {
        preview = true,
        width_preview = 50,
      },
    }
    vim.keymap.set('n', '<leader>fo', open, { desc = '[F]ile [O]pen' })

    -- Pairs
    require('mini.pairs').setup()
    -- splitjoin
    require('mini.splitjoin').setup()
  end,
}
