local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local sorters = require("telescope.sorters")

local opts = {
	finder = finders.new_table({ "1", "2", "3" }),
	sorter = sorters.get_generic_fuzzy_sorter({}),
}

local files = pickers.new(opts)

files:find()
