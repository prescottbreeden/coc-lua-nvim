" ========================
"       Cheat Sheet
" ========================

// NOTE: this is just the README.md by default

## Lua Scripts
FixColorColumn: `:lua FixColorColumn()` -- repaint color column for filetype

## Remaps & Funsies

Leader key: `,`

| mode   | description            | command                       |
| ------ | ---------------------- | ----------------------------- |
| normal | nav to window          | `<C-{h,j,k,l}>`               |
| normal | resize window          | `<C-{left, right, up, down}>` |
| normal | normalize windows      | `<C-w><C-w>`                  |
| normal | clear search highlight | `<C-n>`                       |
| visual | move line up/down      | `J`/`K`                       |
| normal | open terminal          | `<leader>t`                   |
| insert | alternate esc          | `jk`                          |

---

## Packages

### CoC

| mode          | description                   | command         |
| ------------- | ----------------------------- | --------------- |
| normal        | goto definition               | `gd`            |
| normal        | goto type definition          | `gy`            |
| normal        | goto implementation           | `gi`            |
| normal        | goto references               | `gr`            |
| normal        | trigger hover                 | `K`             |
| normal        | rename                        | `<leader>rn`    |
| normal        | open code actions             | `<leader>cc`    |
| insert        | suggest options               | `<C-space>`     |
| insert        | next/prev option              | `<C-n>`/`<C-p>` |
| normal        | open diagnostics              | `<leader>x`     |
| normal        | next diagnostic               | `[d`            |
| normal        | prev diagnostic               | `]d`            |
| normal/visual | code action selected          | `<leader>ca`    |
| normal        | code action cursor            | `<leader>cc`    |
| normal        | code action whole buffer      | `<leader>cG`    |
| normal        | code action current buffer    | `<leader>cg`    |
| normal        | code action refactor          | `<leader>re`    |
| normal        | code action refactor selected | `<leader>rr`    |
| normal        | quickfix                      | `<leader>qf`    |
| normal/visual | format file/selected          | `<leader>pf`    |

### Harpoon

Harpoon menu can also be manually manipulated like any buffer

| description    | command             |
| -------------- | ------------------- |
| show/edit list | `<leader>e`         |
| add            | `<leader>h`         |
| select         | `<leader>{1,2,3,4}` |

### Telescope

| description                    | command       |
| ------------------------------ | ------------- |
| search files under git control | `<leader>fp`  |
| search all file names          | `<leader>ff`  |
| search all buffers             | `<leader>fb`  |
| dual grep all files            | `<leader>fg`  |
| fuzzy find current buffer      | `<leader>,ff` |

### Nerdtree

| description  | command      |
| ------------ | ------------ |
| toggle tree  | `<leader>m,` |
| goto current | `<leader>mf` |

### Undotree

| description   | command     |
| ------------- | ----------- |
| open undotree | `<leader>u` |

### Window-swap

| description              | command            |
| ------------------------ | ------------------ |
| swap window in direction | `<A-{h, j, k, l}>` |

### ChatGPT

| description              | command                    |
| ------------------------ | -------------------------- |
| open ChatGPT simple      | `<leader>ai`               |
| apply custom persona     | `<leader>aa`               |
| edit with instructions   | `<leader>al`               |
| submit prompt            | `<A-enter>`                |
| close                    | `<C-c>` or `:q` or `<esc>` |
| toggle settings/sessions | `<C-o>`                    |
| cyles windows            | `<Tab>` or mouse click     |
| new session              | `<C-n>`                    |
| select session           | `<space>`                  |
| rename session           | `r`                        |
| delete session           | `d`                        |
| scroll up/down           | `<C-u>`/`<C-d>`            |
| yank last                | `<C-y>`                    |
| yank last code           | `<C-k>`                    |
