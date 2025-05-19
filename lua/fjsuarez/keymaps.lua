local map = vim.keymap.set

-- Clipboard
map({'n','v'},'<leader>y','"+y')
map({'n','v'},'<leader>p','"+p')
map({'n','v'},'<leader>d','"+d')

-- Comment
vim.keymap.set('n','<C-_>','gcc',{remap=true,desc='Toggle comment line'})
vim.keymap.set('v','<C-_>','gc',{remap=true,desc='Toggle comment selection'})

-- Exit terminal mode
map('t','<Esc>','<C-\\><C-n>',{noremap=true,silent=true})

-- NvimTree
map('n','<leader>e',':NvimTreeToggle<CR>',{noremap=true,silent=true,desc="Toggle NvimTree"})
