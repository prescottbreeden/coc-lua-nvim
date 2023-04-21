---@diagnostic disable: undefined-global
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
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

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use { 'neoclide/coc.nvim', branch = 'release' }

  -- color theme
  use { 'nanotech/jellybeans.vim', as = 'jellybeans' }

  -- tree sitter
  use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
  use 'nvim-treesitter/playground' -- reveal current AST in buffer

	-- Snippets
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- language specific
  use 'rust-lang/rust.vim'

  -- file search/grep
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'scrooloose/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'

  -- other goodies
  use 'theprimeagen/harpoon' -- quick file hopping
  use 'mbbill/undotree' -- manipulate undo stack directly
  use 'airblade/vim-gitgutter' -- add git line change info
  use 'nvim-tree/nvim-web-devicons' -- make pretty dev icons
  use 'vim-airline/vim-airline' -- additional file/branch info than default
  use 'vim-airline/vim-airline-themes' -- pre-configured themes for airline
  use "lukas-reineke/virt-column.nvim" -- uses virtual text in place of hi
  use "wesQ3/vim-windowswap" -- allows for directional window swapping
  use 'madox2/vim-ai' -- chatGPT integration

  -- pope essentials
  use 'tpope/vim-fugitive' -- git powa
  use 'tpope/vim-commentary' -- quick line commenting with `gc + motion`
  use 'tpope/vim-surround' -- change/delete/wrap motion with text/chars
  use 'tpope/vim-repeat' -- repeat a plugin map
  use 'tpope/vim-eunuch' -- vim sugar for UNIX shell commands

end)
