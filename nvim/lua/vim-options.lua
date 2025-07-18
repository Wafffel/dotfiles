vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.diagnostic.config({
  virtual_text = true
})

vim.api.nvim_create_autocmd("VimLeave", { command = "set guicursor=a:ver25" })
