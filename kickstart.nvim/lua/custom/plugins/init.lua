-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.opt.wrap = false;
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
  { 'folke/zen-mode.nvim' },
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('alpha').setup(require('alpha.themes.startify').config)
    end,
  },
  {
    'echasnovski/mini.nvim',
    config = function()
      local MiniFiles = require('mini.files');
      local open = function()
        MiniFiles.open(vim.api.nvim_buf_get_name(0))
      end
      MiniFiles.setup()
      vim.keymap.set('n', '<leader>fo', open, { desc = '[F]ile [O]pen' })
    end,
  }
}
