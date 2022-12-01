local actions = require('telescope.actions')
require('telescope').setup {
	defaults = {
		mappings = {
			i = {
			      ["<C-j>"] = actions.move_selection_next,
			      ["<C-k>"] = actions.move_selection_previous,
			}
		}
	}
}


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
