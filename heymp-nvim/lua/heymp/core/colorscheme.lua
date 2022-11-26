local colorscheme = "dracula-nvim"

local status_ok, _ = pcall(vim.cmd([[colorscheme dracula]]))
if not status_ok then
	return
end
