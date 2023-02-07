local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	use({ "wbthomason/packer.nvim", commit = "00ec5adef58c5ff9a07f11f45903b9dbbaa1b422" }) -- Have packer manage itself
	use("nvim-lua/plenary.nvim") -- Useful lua functions used by lots of plugins

	-- Colorschemes
	use("Mofiqul/dracula.nvim") -- Dracula 🧛

	-- Vim
	use({ "szw/vim-maximizer", commit = "2e54952fe91e140a2e69f35f22131219fcd9c5f1" }) -- resize vim splits
	use({ "tpope/vim-surround", commit = "aeb933272e72617f7c4d35e1f003be16836b948d" })
	use({ "vim-scripts/ReplaceWithRegister", commit = "832efc23111d19591d495dc72286de2fb0b09345" }) -- use "y<motion>" to yank to register and "gr<motion>" to replace with register
	use({ "numToStr/Comment.nvim", commit = "d9cfae1059b62f7eacc09dba181efe4894e3b086" })
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- File explorer
	use("nvim-tree/nvim-tree.lua")
	use({ "kyazdani42/nvim-web-devicons", commit = "8d2c5337f0a2d0a17de8e751876eeb192b32310e" })
	use({ "nvim-lualine/lualine.nvim", commit = "3362b28f917acc37538b1047f187ff1b5645ecdd" })

	-- Projects
	use("ahmedkhalf/project.nvim")

	-- Telescope
	use({ "nvim-telescope/telescope.nvim", commit = "d96eaa914aab6cfc4adccb34af421bdd496468b0" })
	use({ "nvim-telescope/telescope-fzf-native.nvim" })
	use("jremmen/vim-ripgrep")

	-- Autocompletion
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-nvim-lua")
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")

	-- Snippets LuaSnip
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- LSP Servers
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")

	-- Formatting & linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter")

	-- auto closing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- Git
	use("lewis6991/gitsigns.nvim")

	-- Tabs
	use({ "akinsho/bufferline.nvim", commit = "c78b3ecf9539a719828bca82fc7ddb9b3ba0c353" })
	use("moll/vim-bbye")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
