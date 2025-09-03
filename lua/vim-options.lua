-- use system clipboard
vim.opt.clipboard = 'unnamedplus'

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- remove background color regardless of current theme
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.opt.relativenumber = true

vim.opt.signcolumn = "yes"
