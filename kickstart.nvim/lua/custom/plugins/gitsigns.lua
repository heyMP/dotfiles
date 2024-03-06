return {
  'lewis6991/gitsigns.nvim',
  opts = {
    -- See `:help gitsigns.txt`
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(client, bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map('n', ']c', function()
        if vim.wo.diff then return ']c' end
        vim.schedule(function() gs.next_hunk() end)
        return '<Ignore>'
      end, { expr = true })

      map('n', '[c', function()
        if vim.wo.diff then return '[c' end
        vim.schedule(function() gs.prev_hunk() end)
        return '<Ignore>'
      end, { expr = true })

      -- Actions
      map('n', '<leader>xs', ':<C-U>Gitsigns stage_hunk<CR>', { desc = 'Gitsigns: [S]tage hunk' })
      map('n', '<leader>xu', ':<C-U>Gitsigns undo_stage_hunk<CR>', { desc = 'Gitsigns: [U]ndo stage hunk' })
      map('n', '<leader>xr', ':<C-U>Gitsigns reset_hunk<CR>', { desc = 'Gitsigns: [R]eset hunk' })
      map('n', '<leader>xp', ':<C-U>Gitsigns preview_hunk<CR>', { desc = 'Gitsigns: [P]review hunk' })
      map('n', '<leader>xb', ':<C-U>Gitsigns toggle_current_line_blame<CR>', { desc = 'Gitsigns: Toggle line [b]lame' })
      -- write a keymap that toggles delete diff
      map('n', '<leader>xd', ':<C-U>Gitsigns toggle_deleted<CR>', { desc = 'Gitsigns: Toggle [D]eleted' })

      -- Text object
      map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
    end,
  },
}
