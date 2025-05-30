-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree last reveal toggle<CR>', { desc = 'NeoTree reveal' } },
    { '<leader>\\t', ':Neotree reveal<CR>', { desc = 'NeoTree tree' } },
    { '<leader>\\g', ':Neotree git_status reveal<CR>', { desc = 'NeoTree git status' } },
    { '<leader>\\b', ':Neotree buffers reveal<CR>', { desc = 'NeoTree buffers' } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
