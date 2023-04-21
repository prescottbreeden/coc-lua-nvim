# Neovim Lua Config

Non-CoC neovim IDE. General set and remaps are in `lua/pb1337` and
modifications or additional mappings for plugins in `after/plugin`.

Use `<leader>c` to open up the cheat sheet for list of current mappings.

```
  packer.nvim - Total plugins: 25
 ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 • coc.nvim
 • friendly-snippets
 • harpoon
 • jellybeans
 • nerdtree
 • nerdtree-git-plugin
 • nvim-treesitter
 • nvim-web-devicons
 • packer.nvim
 • playground
 • plenary.nvim
 • rust.vim
 • telescope.nvim
 • undotree
 • vim-ai
 • vim-airline
 • vim-airline-themes
 • vim-commentary
 • vim-eunuch
 • vim-fugitive
 • vim-gitgutter
 • vim-repeat
 • vim-surround
 • vim-windowswap
 • virt-column.nvim
```

## Install

- install [nvim v0.9.0+](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- clone and move to config `~/.config/lua-nvim`
- rename to `nvim` (should now have the path `~/.config/nvim`)
- download [packer](https://github.com/wbthomason/packer.nvim):

Unix, Linux install for Packer:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- `nvim ~/.config/nvim/lua/pb1337/packer.lua`
- `:so` give the file a quick shout out to source it
- `:PackerSync` (re-run if there are any errors)
- `:qa` and should be good to go

## Lua Scripts

- FixColors: `:lua FixColors()` -- remove bg from float windows
- FixColorColumn: `:lua FixColorColumn()` -- repaint color column for filetype

## Remaps & Funsies

Leader key: `<spacebar>`

| mode | description | command |
|------|-------------|---------|
|normal|nav to window|`<C-{h,j,k,l}>`|
|normal|resize window|`<C-{left, right, up, down}>`|
|normal|normalize windows| `<C-w><C-w>`|
|normal|clear search highlight|`<C-n>`|
|visual|move VB line up|`J`|
|visual|move VB line down|`K`|
|normal|open terminal|`<leader>t`|
|normal|source buffer|`<leader><leader>`|
|insert|alternate esc|`jk`|

---

## Packages

### CoC

| mode | description | command |
|------|-------------|---------|
|normal| goto definition | `gd` |
|normal| trigger hover | `K` |
|normal| open code actions | `<leader>vca` |
|normal| find references | `<leader>vrr` |
|normal| rename all | `<leader>vrn` |
|insert| show signature | `<C-h>` |
|normal| open diagnostic float | `<leader>vd` |
|normal| next diagnostic | `[d` |
|normal| prev diagnostic | `]d` |
|normal| workspace symbol | `<leader>vws` |

### Harpoon

| description | command |
|-------------|---------|
|show/edit list|`<leader>,e`|
|add|`<leader>a`|
|select|`<leader>{j,k,l,;}`|

### Telescope

| description | command |
|-------------|---------|
|search files under git control|`<C-p>`|
|search all file names|`<leader>ff`|
|search all buffers|`<leader>fb`|
|dual grep all files|`<leader>fg`|
|fuzzy find current buffer|`<leader>,ff`|

### Nerdtree

| description | command |
|-------------|---------|
|toggle tree|`<leader>,k`|
|goto current|`<leader>,m`|

### Undotree

| description | command |
|-------------|---------|
|open undotree|`<leader>u`|

### Window-swap

| description | command |
|-------------|---------|
|swap window in direction|`<A-{h, j, k, l}>`|

### OpenAI Chat

| description | command |
|-------------|---------|
|open chat|`<leader>ai`|
|send question|`<leader>ai`|

