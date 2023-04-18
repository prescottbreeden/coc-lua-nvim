vim.g.mapleader = " "
-- Normal Mode
vim.keymap.set("n", "Q", "<nop>") -- don't ever press Q, it's the worst place in the universe
vim.keymap.set({"n", "v"}, "<leader>pf", vim.lsp.buf.format) -- use lsp to format
vim.keymap.set("n", "<C-n>", ":noh<cr>") -- clear search highlights
vim.keymap.set("n", "J", "mzJ`z") -- J with cursor in place (prevent col jump)
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- keep cursor in middle when jumping down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- keep cursor in middle when jumping up
vim.keymap.set("n", "n", "nzzzv") -- keep cursor in middle when moving forwards through search results
vim.keymap.set("n", "N", "Nzzzv") -- keep cursor in middle when moving backwards through search results
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>") -- live search replace on current word
vim.keymap.set("n", "<leader>c", ":nos botright 40vs ~/.config/nvim/cheats.vim<cr>") -- open cheat sheet
vim.keymap.set("n", "<leader>v", ":vs<cr>") -- create vertical split
vim.keymap.set("n", "<leader>i", ":sp<cr>") -- create horizontal split (mirror nerdtree)
vim.keymap.set("n", "<C-w><C-w>", "<C-w>=") -- equalize window split sizes

-- file vim-fu
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- make current file executable
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end) -- source current file

-- Insert Mode
vim.keymap.set("i", "jk", "<esc>")

-- Visual Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move block up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move block down

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]]) -- don't lose register when pasting over word
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) -- don't lose register when deleting

-- Switch between windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Resize windows
vim.keymap.set("n", "<C-left>", "<C-w><")
vim.keymap.set("n", "<C-right>", "<C-w>>")
vim.keymap.set("n", "<C-up>", "<C-w>+")
vim.keymap.set("n", "<C-down>", "<C-w>-")

-- System Clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- terminal-fu
vim.keymap.set({"n", "v"}, "<leader>t", ":15sp +te<cr>") -- open terminal split
vim.keymap.set("t", "<esc>", "<C-\\><C-n>") -- return to normal mode
