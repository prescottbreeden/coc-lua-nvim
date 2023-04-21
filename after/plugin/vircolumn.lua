function FixColorColumn()
  local filetype = vim.bo.filetype
  if(filetype == 'rust')
    then
      vim.opt.colorcolumn = "100"
    else
      vim.opt.colorcolumn = "80"
  end
end
FixColorColumn()

require("virt-column").setup { char = "┃" }

