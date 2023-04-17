# Neovim Lua Config

Non-CoC neovim IDE. General set and remaps are in `lua/pb1337` and
modifications or additional mappings for plugins in `after/plugin`.

Use `<leader>c` to open up the cheat sheet for list of current mappings.

## Packages
 - LuaSnip
 - cmp-nvim-lsp
 - harpoon
 - jellybeans
 - lsp-zero.nvim
 - mason-lspconfig.nvim
 - mason.nvim
 - nerdtree
 - nerdtree-git-plugin
 - nvim-cmp
 - nvim-lspconfig
 - nvim-treesitter
 - nvim-web-devicons
 - packer.nvim
 - playground
 - plenary.nvim
 - telescope.nvim
 - trouble.nvim
 - undotree
 - vim-commentary
 - vim-eunuch
 - vim-fugitive
 - vim-gitgutter
 - vim-repeat
 - vim-surround

## Install

- install [nvim v0.9.0+](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- clone to `~/.config/`
- `mv lua-nvim nvim` (should now have the path `~/.config/nvim`)
- download [packer](https://github.com/wbthomason/packer.nvim):

Unix, Linux install for Packer:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- `nvim ~/.config/nvim/lua/pb1337/packer.lua`
- `:PackerSync` (re-run if there are any errors)
- `qa` and should be good to go

## Lua Scripts

- FixColors: lua FixColors() -- remove bg from NormalFloat windows

## Remaps

| description | command |
|-------------|---------|
|alternate esc|`jk`|
|switch window|`<C-{h,j,k,l}>`|
|resize window|`<C-{left, right, up, down}>`|
|equalize window sizes| `<C-w><C-w>`|
|clear search highlight|`<C-n>`|
|move VB line up|`J`|
|move VB line down|`K`|

## Leader

| description | command |
|-------------|---------|
|yank to "+y system register|`<leader>y`|
|yank to "+Y  systemregister|`<leader>Y`|
|persist register copy|`<leader>p`|
|persist register del|`<leader>d`|
|open vertical split|`<leader>v`|
|open horizontal split|`<leader>i`|
|open terminal in buff|`<leader>t`|
|make file executable|`<leader>x`|
|source current file|`<leader><leader>`|

## Package Keybinds

### harpoon

| description | command |
|-------------|---------|
|show/edit list|`<leader>,e`|
|add|`<leader>a`|
|select|`<leader>{j,k,l,;}`|

### telescope

| description | command |
|-------------|---------|
|git files|`<C-p>`|
|find files|`<leader>pf`|
|buffers|`<leader>pb`|
|grep project|`<leader>ps`|
|fuzzy find|`<leader>ff`|

### nerdtree

| description | command |
|-------------|---------|
|toggle tree|`<leader>,k`|
|goto current|`<leader>,m`|

### trouble

| description | command |
|-------------|---------|
|close trouble|`q or <esc>`|
|toggle trouble|`<leader>xx`|
|workspace diagnostics|`<leader>xw`|
|document diagnostics|`<leader>xw`|
|local list|`<leader>xl`|
|trouble quickfix|`<leader>xq`|
|lsp references|`<leader>gR`|

### undotree

| description | command |
|-------------|---------|
|open undotree|<leader>u|

