return {
  'chentoast/marks.nvim',
  config = function()
    local marks = require 'marks'
    marks.setup {
      default_mappings = true,
      mappings = {
        next = '<C-n>',
        prev = '<C-p>',
      },
    }
  end,
}
