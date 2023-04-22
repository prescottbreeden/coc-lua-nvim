---@diagnostic disable: undefined-global

-- Autocomplete
function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use K to show documentation in preview window
function _G.show_docs()
  local cw = vim.fn.expand('<cword>')
  if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
    vim.api.nvim_command('h ' .. cw)
  elseif vim.api.nvim_eval('coc#rpc#ready()') then
    vim.fn.CocActionAsync('doHover')
  else
    vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
  end
end

-- Add `:Format` command to format current buffer
vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

-- Add `:OR` command for organize imports of the current buffer
vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

-- Highlight the symbol and its references on a CursorHold event(cursor is idle)
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
  group = "CocGroup",
  command = "silent call CocActionAsync('highlight')",
  desc = "Highlight symbol under cursor on CursorHold"
})

-- Setup formatexpr specified filetype(s)
vim.api.nvim_create_autocmd("FileType", {
  group = "CocGroup",
  pattern = "typescript,json",
  command = "setl formatexpr=CocAction('formatSelected')",
  desc = "Setup formatexpr specified filetype(s)."
})

-- Update signature help on jump placeholder
vim.api.nvim_create_autocmd("User", {
  group = "CocGroup",
  pattern = "CocJumpPlaceholder",
  command = "call CocActionAsync('showSignatureHelp')",
  desc = "Update signature help on jump placeholder"
})

-- keymaps
local keyset = vim.keymap.set
keyset("n", "gd", "<Plug>(coc-definition)", { silent = true })
keyset("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
keyset("n", "gi", "<Plug>(coc-implementation)", { silent = true })
keyset("n", "gr", "<Plug>(coc-references)", { silent = true })
keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', { silent = true, noremap = true })
keyset("n", "<leader>rn", "<Plug>(coc-rename)", { silent = true })

-- suggestion window
local suggestion_options = { silent = true, noremap = true, expr = true, replace_keycodes = false }
keyset("i", "<C-space>", "coc#refresh()", suggestion_options)
keyset("i", "<tab>", "coc#pum#visible() ? coc#pum#next(1) : '<TAB>'", suggestion_options)
keyset("i", "<S-tab>", "coc#pum#visible() ? coc#pum#prev(1) : '<C-h>'", suggestion_options)
keyset("i", "<cr>", "coc#pum#visible() ? coc#pum#confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", suggestion_options)

-- code actions
local code_action_options = { silent = true, nowait = true }
keyset({ "n", "x", "v" }, "<leader>ca", "<Plug>(coc-codeaction-selected)", code_action_options)
keyset("n", "<leader>cc", "<Plug>(coc-codeaction-cursor)", code_action_options) -- code actions at the cursor position.
keyset("n", "<leader>cG", "<Plug>(coc-codeaction-source)", code_action_options) -- code actions affect whole buffer.
keyset("n", "<leader>cg", "<Plug>(coc-codeaction)", code_action_options)        -- codeActions to the current buffer
keyset("n", "<leader>qf", "<Plug>(coc-fix-current)", code_action_options)       -- quickfix action on the current line.
keyset("n", "<leader>re", "<Plug>(coc-codeaction-refactor)", { silent = true })
keyset({"n", "x"}, "<leader>rr", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })

-- formatting
keyset("n", "<leader>pf", ":CocCommand prettier.formatFile<CR>", { silent = true, noremap = true })
keyset({ "v", "x" }, "<leader>pf", "<Plug>(coc-format-selected)", { silent = true })

-- snippets (does this even work?)
keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)") -- Use <c-j> to trigger snippets

-- diagnostics
local diagnostic_options = { silent = true, noremap = true, expr = true, replace_keycodes = false }
keyset("n", "<leader>x", ":CocDiagnostics<cr>", {})
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", diagnostic_options)
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", diagnostic_options)

-- Remap <C-f> and <C-b> to scroll float windows/popups
local float_options = { silent = true, nowait = true, expr = true }
keyset("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', float_options)
keyset("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', float_options)
keyset("i", "<C-f>", 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', float_options)
keyset("i", "<C-b>", 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', float_options)
keyset("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', float_options)
keyset("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', float_options)
