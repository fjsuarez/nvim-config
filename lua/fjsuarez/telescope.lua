local map = vim.keymap.set
map('n','<leader>ff', require('telescope.builtin').find_files)
map('n','<leader>fg', require('telescope.builtin').live_grep)
map('n','<leader>fb', require('telescope.builtin').buffers)
map('n','<leader>fh', require('telescope.builtin').help_tags)
