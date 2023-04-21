" ========================
"       Cheat Sheet
" ========================

" --[ Lua Scripts ]-------
" - FixColorColumn: `:lua FixColorColumn()` -- repaint colorcolumn for filetype
" - FixColors:  `:lua FixColors()` -- remove bg from NormalFloat windows

" --[ Remaps ]------------
" insert - alternate esc:          jk
" normal - switch window:          <C-{h,j,k,l}>
" normal - resize window:          <C-{left, right, up, down}>
" normal - equalize window sizes:  <C-w><C-w>
" normal - clear search highlight: <C-n>
" visual - move VB line up:        J
" visual - move VB line down:      K
" normal - use buffer formatter:   <leader>pf
" normal - yank to "+y register:   <leader>y (system register)
" normal - yank to "+Y register:   <leader>Y (system register)
" normal - persist register copy:  <leader>p
" normal - persist register del:   <leader>d
" normal - open vertical split:    <leader>vs
" normal - open horizontal split:  <leader>sp
" normal - open terminal in buff:  <leader>t
" normal - source current file:    <leader><leader>

" --[ LSP ]---------------
"normal - goto definition:        gd
"normal - trigger hover:          K
"normal - workspace symbol:       <leader>vws
"normal - open diagnostic float:  <leader>vd
"normal - next diagnostic:        [d
"normal - prev diagnostic:        ]d
"normal - open code actions:      <leader>vca
"normal - find references:        <leader>vrr
"normal - rename all:             <leader>vrn
"insert - show signature:         <C-h>

" --[ Plugins ]-----------
" harpoon
" - show/edit list: <leader>,e
" - add:            <leader>a
" - select:         <leader>{j,k,l,;}

" telescope
" - find files:     <leader>ff
" - buffers:        <leader>fb
" - delete buffer:  <C-x>
" - git files:      <C-p>
" - grep project:   <leader>fg
" - fuzzy find:     <leader>,ff
" - git commits:    :Telescope git_commits

" nerdtree
" - toggle tree:    <leader>,k
" - go to current:   <leader>,m

" undotree
" - open undotree:  <leader>u

" window-swap
" - swap window in direction: <A-{h, j, k, l}>
