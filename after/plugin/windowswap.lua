---@diagnostic disable: undefined-global
vim.g.windowswap_map_keys = 0 -- remove default <leader>ww

vim.api.nvim_exec([[
  function! WindowSwapInDirection(dir)
    call WindowSwap#MarkWindowSwap()
    exec 'wincmd ' . a:dir
    call WindowSwap#DoWindowSwap()
  endfunction

  noremap <A-h> :call WindowSwapInDirection('h')<cr>
  noremap <A-j> :call WindowSwapInDirection('j')<cr>
  noremap <A-k> :call WindowSwapInDirection('k')<cr>
  noremap <A-l> :call WindowSwapInDirection('l')<cr>
]], false)
