return {
  'ThePrimeagen/harpoon',
  branch = 'master',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('which-key').setup()

    require('which-key').register {
      ['<leader>x'] = { name = 'Harpoon', _ = 'which_key_ignore' },
    }

    vim.keymap.set('n', '<leader>x', '', { desc = 'Harpoon: [O]pen' })
    vim.keymap.set('n', '<leader>xo', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', { desc = 'Harpoon: [O]pen' })
    vim.keymap.set('n', '<leader>xt', '<cmd>lua require("harpoon.mark").toggle_file()<cr>', { desc = 'Harpoon: [T]oggle file' })
    vim.keymap.set('n', '<leader>xn', '<cmd>lua require("harpoon.ui").nav_next()<cr>', { desc = 'Harpoon: [N]ext file' })
    vim.keymap.set('n', '<leader>xp', '<cmd>lua require("harpoon.ui").nav_prev()<cr>', { desc = 'Harpoon: [P]revious file' })
    -- Option+h mapping, see https://stackoverflow.com/questions/7501092/can-i-map-alt-key-in-vim
    vim.keymap.set('n', '˙', '<cmd>lua require("harpoon.ui").nav_prev()<cr>')
    -- Option+h mapping, see https://stackoverflow.com/questions/7501092/can-i-map-alt-key-in-vim
    vim.keymap.set('n', '¬', '<cmd>lua require("harpoon.ui").nav_next()<cr>')
  end,
}
