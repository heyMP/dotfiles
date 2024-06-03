vim.keymap.set('n', '<leader>l', '<cmd>LazyGit<CR>', { desc = '[L]azyGit' })

return {
  'kdheepak/lazygit.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
}
