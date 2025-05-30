return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local lualine = require 'lualine'
    lualine.setup {
      sections = {
        lualine_b = {
          'diff',
          'diagnostics',
        },
      },
    }
  end,
}
