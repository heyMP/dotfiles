local qf_toggle = function()
  local qf_exists = false
  for _, win in pairs(vim.fn.getwininfo()) do
    if win['quickfix'] == 1 then
      qf_exists = true
    end
  end
  if qf_exists == true then
    vim.cmd 'cclose'
    return
  end
  if not vim.tbl_isempty(vim.fn.getqflist()) then
    vim.cmd 'copen'
  end
end

vim.keymap.set('n', '<C-q>', qf_toggle, { desc = '[Q]uickfix toggle' })
vim.keymap.set('n', '<C-n>', '<cmd>cnext<CR>', { desc = 'Quickfix [N]ext' })
vim.keymap.set('n', '<C-p>', '<cmd>cprevious<CR>', { desc = 'Quickfix [P]revious' })

return {
  'kevinhwang91/nvim-bqf',
  event = { 'BufRead', 'BufNew' },
  config = function()
    require('bqf').setup {
      auto_enable = true,
      preview = {
        win_height = 12,
        win_vheight = 12,
        delay_syntax = 80,
        border_chars = { '┃', '┃', '━', '━', '┏', '┓', '┗', '┛', '█' },
      },
      func_map = {
        vsplit = '',
        ptogglemode = 'z,',
        stoggleup = '',
      },
      filter = {
        fzf = {
          action_for = { ['ctrl-s'] = 'split' },
          extra_opts = { '--bind', 'ctrl-o:toggle-all', '--prompt', ' ' },
        },
      },
    }
  end,
}
