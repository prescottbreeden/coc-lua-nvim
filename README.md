# lua-nvim

## --[ Lua Scripts ]-------

- FixColors:  :lua FixColors() -- remove bg from NormalFloat windows

## --[ Remaps ]------------

- alternate esc:          jk
- switch window:          \<C-{h,j,k,l}\>
- resize window:          \<C-{left, right, up, down}\>
- equalize window sizes:  \<C-w\>\<C-w\>
- clear search highlight: \<C-n\>
- move VB line up:        J
- move VB line down:      K

## --[ Leader ]------------

- use buffer formatter:   \<leader\>f
- yank to "+y register:   \<leader\>y (system register)
- yank to "+Y register:   \<leader\>Y (system register)
- persist register copy:  \<leader\>p
- persist register del:   \<leader\>d
- open vertical split:    \<leader\>v
- open horizontal split:  \<leader\>i
- open terminal in buff:  \<leader\>t
- make file executable:   \<leader\>x
- source current file:    \<leader\>\<leader\>

## --[ Plugins ]-----------

### harpoon

- show/edit list: \<leader\>,e
- add:            \<leader\>a
- select:         \<leader\>{j,k,l,;}

### telescope

- find files:     \<leader\>pf
- buffers:        \<leader\>pb
- git files:      \<C-p\>
- grep project:   \<leader\>ps
- fuzzy find:     \<leader\>ff
- git commits:    :Telescope git_commits

### nerdtree

- toggle tree:    \<leader\>,k
- goto current:   \<leader\>,m

### trouble

- close trouble:            q or \<esc\>
- toggle trouble:           \<leader\>xx
- workspace diagnostics:    \<leader\>xw
- document diagnostics:     \<leader\>xw
- local list:               \<leader\>xl
- trouble quickfix:         \<leader\>xq
- lsp references:           \<leader\>gR

### undotree

- open undotree:  \<leader\>u

