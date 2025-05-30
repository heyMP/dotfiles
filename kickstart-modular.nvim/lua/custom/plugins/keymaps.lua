vim.keymap.set('n', '<leader>q', '<cmd>bd<cr>', { desc = '[Q]uit Buffer' })
vim.keymap.set('n', '<leader>sd', '<cmd>Telescope diagnostics bufnr=0<cr>', { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sD', '<cmd>Telescope diagnostics<cr>', { desc = '[S]earch [D]iagnostics for workspace' })

return {}
