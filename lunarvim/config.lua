--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]
-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true
-- vim folding
vim.opt.foldmethod = 'indent'
vim.opt.foldenable = false --[[ don't expand by default ]]

-- general
lvim.log.level = 'info'
lvim.format_on_save = {
  enabled = true,
  pattern = { '*.lua', "*.ts" },
  timeout = 1000,
}
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = 'space'

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = 'space'
-- add your own keymapping
lvim.keys.normal_mode['<C-q>'] = ':BufferKill<CR>'
lvim.keys.normal_mode['<S-h>'] = ':BufferLineCyclePrev<CR>'
lvim.keys.normal_mode['<S-l>'] = ':BufferLineCycleNext<CR>'
-- Remove the block moving of lines https://www.lunarvim.org/docs/keybind-overview#editing
lvim.keys.insert_mode['<M-k>'] = false
lvim.keys.insert_mode['<M-j>'] = false
lvim.keys.insert_mode['<M-e>'] = false
lvim.keys.insert_mode['<M-e>'] = false
lvim.keys.visual_mode['<M-k>'] = false
lvim.keys.visual_mode['<M-j>'] = false

-- -- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings['W'] = { '<cmd>noautocmd w<cr>', 'Save without formatting' }
lvim.builtin.project.patterns = {
  '.git'
}
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- -- Change theme settings
-- lvim.colorscheme = "lunar"
-- local gwidth = vim.api.nvim_list_uis()[1].width
-- local gheight = vim.api.nvim_list_uis()[1].height
-- local width = 60
-- local height = 20

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = 'dashboard'
local buttons = {
  opts = {
    hl_shortcut = "Include",
    spacing = 1,
  },
  entries = {
    { "h", "󰓾  Harpoon",                        "<CMD>lua require('harpoon.ui').toggle_quick_menu()<CR>" },
    { "w", "  Worktrees ",                      "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>" },
    { "p", lvim.icons.ui.Project .. "  Projects ", "<CMD>Telescope projects<CR>" },
    {
      "c",
      lvim.icons.ui.Gear .. "  Configuration",
      "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. " <CR>",
    },
    { "q", lvim.icons.ui.Close .. "  Quit", "<CMD>quit<CR>" },
  },
}
lvim.builtin.alpha.dashboard.section.buttons = buttons;
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = 'left'
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
-- lvim.builtin.nvimtree.setup.view.float.enable = true
-- lvim.builtin.nvimtree.setup.view.float.open_win_config = {
--   relative = "editor",
--   border = "rounded",
--   width = width,
--   height = height,
--   row = (gheight - height) * 0.4,
--   col = (gwidth - width) * 0.5,
-- }
-- show node modules in nvimtree
lvim.builtin.nvimtree.setup.filters.custom = {}

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- lvim.builtin.treesitter.ignore_install = { "haskell" }

-- -- always installed on startup, useful for parsers without a strict filetype
-- lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- linters, formatters and code actions <https://www.lunarvim.org/docs/languages#lintingformatting>
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "stylua" },
-- {
--   command = "prettier",
--   extra_args = { "--print-width", "100" },
--   filetypes = { "typescript", "typescriptreact" },
-- },
-- }
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     command = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }
-- local code_actions = require "lvim.lsp.null-ls.code_actions"
-- code_actions.setup {
--   {
--     exe = "eslint",
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
  {
    'chentoast/marks.nvim',
    config = function()
      local marks = require 'marks'
      marks.setup {
        default_mappings = true
      }
    end
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  { 'tpope/vim-surround' },
  { 'jremmen/vim-ripgrep' },
  {
    'L3MON4D3/LuaSnip',
    require 'luasnip.loaders.from_vscode'.lazy_load { paths = {
      -- Path to the built project, perhaps in your `node_modules`
      'node_modules/@rhds/tokens/editor/vscode'
    } }
  },
  { 'mg979/vim-visual-multi' },
  { 'kevinhwang91/rnvimr' },
  {
    'folke/trouble.nvim',
    cmd = 'TroubleToggle',
  },
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", " " },
          },
        },
      })
    end,
  },
  { 'junegunn/fzf' },
  { 'gabrielpoca/replacer.nvim' },
  {
    'Wansmer/treesj',
    keys = { '<space>m' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup({ --[[ your config ]] })
    end,
  },
  { 'ThePrimeagen/harpoon' },
  {
    'ThePrimeagen/git-worktree.nvim',
    config = function()
      local Worktree = require('git-worktree')
      Worktree.setup({
        update_on_change_command = "NvimTreeOpen"
      })
      Worktree.on_tree_change(function(op, metadata)
        if op == Worktree.Operations.Switch then
          print(metadata.prev_path .. " -> " .. metadata.path)
        end
      end)
    end
  },
}

-- Telescope
lvim.builtin.telescope.theme = 'center'
lvim.builtin.telescope.on_config_done = function(telescope)
  local trouble = require('trouble.providers.telescope')
  -- local fb_actions = require "telescope._extensions.file_browser.actions"
  telescope.setup {
    defaults = {
      mappings = {
        i = { ['<c-t>'] = trouble.open_with_trouble },
        n = { ['<c-t>'] = trouble.open_with_trouble },
      }
    },
    extensions = {
      file_browser = {
        theme = "ivy",
        mappings = {
          -- ['i'] = {
          --   -- change all of the insert mappings to <C> due to special
          --   -- characters toggle in karabiner
          --   ["<C-c>"] = fb_actions.create,
          --   ["<C-r>"] = fb_actions.rename,
          --   ["<C-m>"] = fb_actions.move,
          --   ["<C-y>"] = fb_actions.copy,
          --   ["<C-d>"] = fb_actions.remove,
          -- }
        }
      }
    }
  }
  pcall(telescope.load_extension, "file_browser")
  lvim.builtin.which_key.mappings['E'] = { ':Telescope file_browser path=%:p:h select_buffer=true<CR>', 'File browser' }
  pcall(telescope.load_extension, "git_worktree")
  lvim.builtin.which_key.mappings['g']['w'] = {
    name = 'Worktrees',
    m = { '<cmd>lua require("telescope").extensions.git_worktree.git_worktrees()<CR>', 'Manage worktrees' },
    -- Manage worktree additional options in telescope
    -- <Enter> - switches to that worktree
    -- <c-d> - deletes that worktree
    -- <c-f> - toggles forcing of the next deletion
    c = { '<cmd>lua require("telescope").extensions.git_worktree.create_git_worktree()<CR>', 'Create worktree' }
  }
  lvim.builtin.which_key.mappings['s']['w'] = {
    '<cmd>lua require("telescope").extensions.git_worktree.git_worktrees()<CR>', 'Worktrees' }
end

lvim.builtin.which_key.mappings['X'] = {
  name = 'Diagnostics',
  t = { '<cmd>TroubleToggle<cr>', 'trouble' },
  w = { '<cmd>TroubleToggle workspace_diagnostics<cr>', 'workspace' },
  d = { '<cmd>TroubleToggle document_diagnostics<cr>', 'document' },
  q = { '<cmd>TroubleToggle quickfix<cr>', 'quickfix' },
  l = { '<cmd>TroubleToggle loclist<cr>', 'loclist' },
  r = { '<cmd>TroubleToggle lsp_references<cr>', 'references' },
}

lvim.builtin.which_key.mappings['Q'] = {
  name = 'Quickfix',
  o = { '<cmd>copen<cr>', 'open' },
  c = { '<cmd>cclose<cr>', 'close' },
  n = { '<cmd>cnext<cr>', 'next' },
  p = { '<cmd>cprev<cr>', 'previous' },
  r = { '<cmd>lua require("replacer").run()<cr>', 'replacer' },
  s = { '<cmd>lua require("replacer").save()<cr>', 'replacer save' },
}

lvim.builtin.which_key.mappings['o'] = {
  name = 'Harpoon Marks',
  o = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', 'open Harpoon' },
  t = { '<cmd>lua require("harpoon.mark").toggle_file()<cr>', 'toggle file' },
  a = { '<cmd>lua require("harpoon.mark").add_file()<cr>', 'add file' },
  r = { '<cmd>lua require("harpoon.mark").rm_file()<cr>', 'rm file' },
  j = { '<cmd>lua require("harpoon.ui").nav_prev()<cr>', 'prev file' },
  k = { '<cmd>lua require("harpoon.ui").nav_next()<cr>', 'next file' },
  c = { '<cmd>lua require("harpoon.mark").clear_all()<cr>', 'clear all marks' },
}

lvim.builtin.which_key.mappings['k'] = { '<cmd>ToggleTerm<cr>', 'toggleterm' }

-- -- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(20, "bash")
--   end,
-- })
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.njk" },
  command = "set filetype=html",
})


lvim.builtin.alpha.dashboard.section.header.val = {
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡏⠠⢉⠒⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡊⠉⠒⠲⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠉⣹⢸⢳⡈⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⠈⣏⠲⡀⢷⡀⠀⠀⠀⠀⠀⣀⠜⢁⡾⠀⢹⡌⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⢷⠸⡆⠹⣄⢳⡀⢀⠤⠒⣋⡤⠖⠋⠀⠀⡼⢃⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⢸⡁⠈⠑⢄⡀⠀⢀⠼⢁⡗⠀⢸⡄⣷⠉⡴⠋⠁⠀⠀⠀⢠⠞⣠⡞⠙⢆⠀⠀⠀⠀⢀⣤⢤⡀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠙⣆⢰⣄⢳⡼⢁⡴⠋⠀⠀⢸⡇⠛⣸⠁⠀⠀⠀⠀⠀⡏⣴⣿⠇⣰⡄⢳⡀⠀⢀⠾⢠⢀⡧⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⢀⣤⠤⣄⡀⠀⣠⠏⡸⢹⡎⠁⡾⠀⠀⠀⠀⠸⢬⠷⠽⠀⣠⠀⠀⠀⠀⠻⡀⡤⣰⠃⠹⢤⣉⡟⢁⡴⣿⠉⣍⠳⡀⠀⠀⠀⠀⠀",
  "⠀⠀⠈⢷⡀⢀⠸⠾⢁⡼⠁⠸⡇⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠰⠋⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⢸⠃⢠⡏⠀⢿⣀⣿⢦⠘⡆⠀⠀⠀⠀",
  "⠀⠀⠀⠀⣳⠄⣷⢠⡎⠀⠀⠀⠙⢦⣷⠀⢸⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⣀⣷⠀⠀⠈⠁⢨⡇⣽⠀⠀⠀⠀",
  "⠀⠀⠀⢠⠇⣼⢹⣸⡇⠀⠀⠀⠀⠀⠀⢠⡇⠀⠀⠀⠀⠀⠀⣀⣠⣤⣀⠀⢀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠸⠀⠀⣠⣶⣉⣴⣿⣷⣀⣀⣤",
  "⠀⢿⣷⣾⣶⣷⣿⣏⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⢠⡾⠉⣷⣆⡬⢷⡋⣿⠧⠉⢳⡄⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣍",
  "⢶⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣇⠀⠈⣾⠀⠀⢹⡆⠀⠀⢀⣿⣤⡀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⠛⠛",
  "⠀⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⡀⢀⣼⣿⣷⣾⣿⣿⣿⣿⣷⣀⡀⢀⣼⣿⣿⣿⣿⣿⡏⠈⠲⠀",
  "⠈⠛⢻⡙⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⢴⣶⣶⣿⣿⣿⣿⣿⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣏⣾⣿⣿⣿⣿⣿⡿⠃⠀⢀⠀",
  "⠀⠀⡼⠧⡈⠻⣿⣿⣿⣿⣿⣷⣄⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠒⠀⢀⡼⠃",
  "⢀⣠⡇⢠⣌⣡⠼⠻⣿⣿⣿⣿⣿⣧⡀⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⢩⠄⡏",
  "⠸⡄⢧⣄⡙⢦⡀⠀⠘⠻⣿⣿⣿⣿⣿⣷⣦⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⢀⣀⡤⠞⣰⠏",
  "⠀⠳⡈⠳⣌⠉⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⣼⠀⠶⡾⠁⠀",
  "⠀⠀⠈⠢⣌⣳⡄⠀⠀⢢⡀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠙⢲⡆⡇⠀⠀",
  "⠀⠀⠀⠀⠊⡹⠃⠀⠀⠀⠃⠀⠀⠀⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣠⠤⠚⢉⡤⠃⠀⠀",
}
