-- globals
vim.g.mapleader = " "
vim.g.nobackup = true -- some servers have issues with backup files
vim.g.nowritebackip = true -- some servers have issues with backup files
vim.g.hidden = true -- allow unsaved work in unseen buffer
    
-- options
vim.opt.cmdheight = 2 -- more space for display messages
vim.opt.splitbelow = true -- flip the split preference
vim.opt.wildmenu = true

vim.opt.nu = true -- number lines
vim.opt.relativenumber = true -- relative number lines

vim.cmd('filetype on')
vim.cmd('filetype plugin indent on')
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"

vim.opt.ignorecase = true
vim.opt.smartcase = true


-- set autoindent         " copy indent from current line, over to the new line
-- set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
-- set foldmethod=indent
-- set foldnestmax=10
-- set hidden
-- set history=1000       " Save 1,000 items in history
-- set list               " Show invisible characters
-- set nobackup
-- set nofoldenable
-- set nowritebackup
-- set pyxversion=3
-- set shortmess+=c
-- set t_Co=256           " Explicityly tell vim that the terminal supoprts 256 colors

