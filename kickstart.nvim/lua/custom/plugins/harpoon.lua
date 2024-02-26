return {
  'ThePrimeagen/harpoon',
  branch = 'master',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    vim.keymap.set('n', '<leader>h', '', { desc = '[H]arpoon: [O]pen' })
    vim.keymap.set('n', '<leader>ho', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', { desc = '[H]arpoon: [O]pen' })
    vim.keymap.set('n', '<leader>ht', '<cmd>lua require("harpoon.mark").toggle_file()<cr>', { desc = '[H]arpoon: [T]oggle file' })
    vim.keymap.set('n', '<leader>hn', '<cmd>lua require("harpoon.ui").nav_next()<cr>', { desc = '[H]arpoon: [N]ext file' })
    vim.keymap.set('n', '<leader>hp', '<cmd>lua require("harpoon.ui").nav_prev()<cr>', { desc = '[H]arpoon: [P]revious file' })
    vim.keymap.set('n', '<S-h>', '<cmd>lua require("harpoon.ui").nav_prev()<cr>')
    vim.keymap.set('n', '<S-l>', '<cmd>lua require("harpoon.ui").nav_next()<cr>')
  end,
}
