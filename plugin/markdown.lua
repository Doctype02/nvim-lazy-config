local keymap = vim.keymap

vim.opt.cc = "80"
vim.opt.conceallevel = 0
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

local searchLinks = ":/(.*.md)<CR>n"

keymap.set("n", "<leader>l", searchLinks, { silent = true })
