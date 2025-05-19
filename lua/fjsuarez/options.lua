local o = vim.opt
o.sessionoptions:append({ "globals", "localoptions", "options", "folds", "tabpages", "winpos", "winsize" })

-- basic UI
vim.wo.number = true
vim.wo.relativenumber = true
o.termguicolors = true
vim.cmd("syntax on")
vim.cmd("colorscheme tokyonight")

