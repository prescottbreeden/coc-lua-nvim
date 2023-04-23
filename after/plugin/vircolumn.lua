---@diagnostic disable: undefined-global

require("virt-column").setup { char = "┃" }

-- add a file type and/or customize color column width
local filetypes = {
  javascript = "80",
  lua = "80",
  markdown = "80",
  python = "80",
  rust = "100",
  typescript = "80",
}

function FixColorColumn()
  local filetype = vim.bo.filetype
  local value = filetypes[filetype]
  print(filetype)

  if(value) then
    vim.opt.colorcolumn = value
  else
    vim.opt.colorcolumn = ''
  end
end
FixColorColumn()
