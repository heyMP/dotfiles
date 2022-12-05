local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local sorters = require("telescope.sorters")
local builtin = require("telescope.builtin")

local opts = {
	cwd_only = true,
}

local files = builtin.oldfiles(opts)

files:find()
