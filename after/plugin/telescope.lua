-- local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>ff', builtin.current_buffer_fuzzy_find, {})

-- vim.keymap.set('n', '<C-x>', builtin.delete_buffer, {})

-- this is useful but maybe a little dodgey for a remap
-- vim.keymap.set('n', '<leader>commit', builtin.git_commits, {})
