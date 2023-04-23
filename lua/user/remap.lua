---@diagnostic disable: undefined-global

-- prevents using `dd` on an empty line and overwriting current register
-- [src: https://www.reddit.com/r/neovim/comments/w0jzzv/comment/igfjx5y/?utm_source=share&utm_medium=web2x&context=3]
local function smart_dd()
	if vim.api.nvim_get_current_line():match("^%s*$") then
		return "\"_dd"
    -- check if u are deleting empty line and use black hole register
	else return "dd" end
end

-- virt col is more themeing friendly but it's really dumb
local function launch_terminal()
  vim.cmd("15sp +te") -- open terminal split
  vim.cmd("lua FixColorColumn()") -- remove colorcolumn
end

vim.g.mapleader = ","
vim.keymap.set({"n", "v"}, "<space>", ":", { noremap = true}) -- don't ever press Q, it's the worst place in the universe
vim.keymap.set("n", "Q", "<nop>", { noremap = true}) -- don't ever press Q, it's the worst place in the universe
vim.keymap.set("n", "<C-n>", ":noh<cr>", { noremap = true}) -- clear search highlights
vim.keymap.set("n", "J", "mzJ`z", { noremap = true}) -- J with cursor in place (prevent col jump)
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true}) -- keep cursor in middle when jumping down
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true}) -- keep cursor in middle when jumping up
vim.keymap.set("n", "n", "nzzzv", { noremap = true}) -- keep cursor in middle when moving forwards through search results
vim.keymap.set("n", "N", "Nzzzv", { noremap = true}) -- keep cursor in middle when moving backwards through search results
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { noremap = true}) -- live search replace on current word
vim.keymap.set("n", "<leader>?", ":nos botright 85vs ~/.config/nvim/cheats.vim<cr>", { noremap = true}) -- open cheat sheet
vim.keymap.set("n", "<C-w><C-w>", "<C-w>=", { noremap = true}) -- equalize window split sizes
vim.keymap.set("i", "jk", "<esc>", { noremap = true})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true}) -- move block up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true}) -- move block down
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true}) -- Switch between windows
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true}) -- Switch between windows
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true}) -- Switch between windows
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true}) -- Switch between windows
vim.keymap.set("n", "<C-left>", "<C-w><", { noremap = true}) -- Resize windows
vim.keymap.set("n", "<C-right>", "<C-w>>", { noremap = true}) -- Resize windows
vim.keymap.set("n", "<C-up>", "<C-w>+", { noremap = true}) -- Resize windows
vim.keymap.set("n", "<C-down>", "<C-w>-", { noremap = true}) -- Resize windows
vim.keymap.set("n", "dd", smart_dd, { noremap = true, expr = true })
vim.keymap.set("n", "<leader>t", launch_terminal, { noremap = true}) -- open terminal split
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { noremap = true}) -- return to normal mode
