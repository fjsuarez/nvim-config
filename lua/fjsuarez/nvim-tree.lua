vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

local function my_nvim_tree_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', 'u', api.node.navigate.parent_close, opts('Go to parent directory'))
  vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Go to parent directory (h)'))
  vim.keymap.set('n', 'l', api.node.open.edit, opts('Open file/toggle directory'))
  vim.keymap.set('n', '<Leader>v', api.node.open.vertical, opts('Open: Vertical Split'))
  vim.keymap.set('n', '<Leader>s', api.node.open.horizontal, opts('Open: Horizontal Split'))
--  vim.keymap.set('n', '<Leader>t', api.node.open.tab, opts('Open: New Tab'))
end

require("nvim-tree").setup({
  sort_by = "case_sensitive", 
  view = {
    width = 30,
    side = "left",
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  update_focused_file = {
    enable = true,
    update_cwd = true, 
  },
  git = {
    enable = true,
    ignore = false,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  on_attach = my_nvim_tree_on_attach,
})

vim.keymap.set('n','<leader>e',':NvimTreeToggle<CR>',{noremap=true,silent=true,desc="Toggle NvimTree"})
