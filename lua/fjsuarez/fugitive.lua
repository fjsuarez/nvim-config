local map = vim.keymap.set

map('n', '<leader>gs', ':G<CR>', { desc = "Fugitive: Git status" })
map('n', '<leader>gc', ':G commit<CR>', { desc = "Fugitive: Commit" })
map('n', '<leader>gp', ':G push<CR>', { desc = "Fugitive: Push" })
map('n', '<leader>gl', ':G pull<CR>', { desc = "Fugitive: Pull" })
map('n', '<leader>gb', ':G blame<CR>', { desc = "Fugitive: Blame" })
map('n', '<leader>gd', ':Gdiffsplit<CR>', { desc = "Fugitive: DiffSplit" })

