function create_new_ai_chat()
  vim.cmd('AIChat')
  vim.api.nvim_command('set wrap')
end

vim.api.nvim_set_keymap('n', '<leader>ai', ':lua create_new_ai_chat()<CR>', {})

