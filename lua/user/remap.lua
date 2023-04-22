---@diagnostic disable: undefined-global
vim.g.mapleader = ","
vim.keymap.set("n", "Q", "<nop>") -- don't ever press Q, it's the worst place in the universe
vim.keymap.set("n", "<C-n>", ":noh<cr>") -- clear search highlights
vim.keymap.set("n", "J", "mzJ`z") -- J with cursor in place (prevent col jump)
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- keep cursor in middle when jumping down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- keep cursor in middle when jumping up
vim.keymap.set("n", "n", "nzzzv") -- keep cursor in middle when moving forwards through search results
vim.keymap.set("n", "N", "Nzzzv") -- keep cursor in middle when moving backwards through search results
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>") -- live search replace on current word
vim.keymap.set("n", "<leader>?", ":nos botright 40vs ~/.config/nvim/cheats.vim<cr>") -- open cheat sheet
vim.keymap.set("n", "<leader>vs", ":vs<cr>") -- create vertical split
vim.keymap.set("n", "<leader>sp", ":sp<cr>") -- create horizontal split (mirror nerdtree)
vim.keymap.set("n", "<C-w><C-w>", "<C-w>=") -- equalize window split sizes
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move block up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move block down
vim.keymap.set("n", "<C-h>", "<C-w>h") -- Switch between windows
vim.keymap.set("n", "<C-j>", "<C-w>j") -- Switch between windows
vim.keymap.set("n", "<C-k>", "<C-w>k") -- Switch between windows
vim.keymap.set("n", "<C-l>", "<C-w>l") -- Switch between windows
vim.keymap.set("n", "<C-left>", "<C-w><") -- Resize windows
vim.keymap.set("n", "<C-right>", "<C-w>>") -- Resize windows
vim.keymap.set("n", "<C-up>", "<C-w>+") -- Resize windows
vim.keymap.set("n", "<C-down>", "<C-w>-") -- Resize windows
vim.keymap.set("n", "<leader>t", ":15sp +te<cr>") -- open terminal split
vim.keymap.set("t", "<esc>", "<C-\\><C-n>") -- return to normal mode

-- smart deletion, dd
-- It solves the issue, where you want to delete empty line, but dd will override you last yank.
-- Code above will check if u are deleting empty line, if so - use black hole register.
-- [src: https://www.reddit.com/r/neovim/comments/w0jzzv/comment/igfjx5y/?utm_source=share&utm_medium=web2x&context=3]
local function smart_dd()
	if vim.api.nvim_get_current_line():match("^%s*$") then
		return "\"_dd"
	else return "dd" end
end
vim.keymap.set("n", "dd", smart_dd, { noremap = true, expr = true })
