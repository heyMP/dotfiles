-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.keymap.set('n', '<leader>l', '<cmd>LazyGit<CR>', { desc = '[L]azyGit' })
vim.keymap.set('n', '<leader>q', '<cmd>confirm q<CR>', { desc = '[Q]uit' })
vim.keymap.set('n', '<leader>w', '<cmd>confirm w<CR>', { desc = '[W]rite' })
vim.keymap.set('n', '<S-h>', ':bprevious<CR>')
vim.keymap.set('n', '<S-l>', ':bnext<CR>')

return {
  {
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
  },
  { 'junegunn/fzf' },
  {
    'kdheepak/lazygit.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },
  {
    'stevearc/oil.nvim',
    config = function()
      local oil = require 'oil'
      oil.setup {
        delete_to_trash = true,
      }

      vim.keymap.set('n', '<leader>fo', '<cmd>Oil<CR>', { desc = '[F]ile browser' })
    end,
  },
  { 'folke/zen-mode.nvim' },
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('alpha').setup(require('alpha.themes.startify').config)
    end,
  },
}
