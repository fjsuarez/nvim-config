-- 1) Plugins (your vim-plug or packer block)
require("fjsuarez.plugins")

-- 2) Basic settings
require("fjsuarez.options")

-- 3) Keymaps
require("fjsuarez.keymaps")

-- 4) Language servers & completion
require("fjsuarez.lsp")
require("fjsuarez.treesitter")
require("fjsuarez.telescope")

-- 5) UI plugins
require("fjsuarez.nvim-tree")
require("fjsuarez.toggleterm")

-- 6) Control
require("fjsuarez.obsession")
require("fjsuarez.fugitive")

-- 7) Copilot
require("fjsuarez.copilotchat")
