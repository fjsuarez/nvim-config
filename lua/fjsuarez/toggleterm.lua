require("toggleterm").setup({
  size = 10,
  open_mapping = [[<c-\>]],
  shade_terminals = true,
  direction = "horizontal",
  float_opts = { border = "curved", winblend = 3 },
})

vim.api.nvim_create_augroup("disable_folding_toggleterm", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = "disable_folding_toggleterm",
  pattern = "toggleterm",
  callback = function(ev)
    local bufnr = ev.buf
    vim.api.nvim_buf_set_option(bufnr, "foldmethod", "manual")
    vim.api.nvim_buf_set_option(bufnr, "foldtext", "foldtext()")
  end,
})

vim.keymap.set("n","<leader>t","<cmd>ToggleTerm<CR>",{noremap=true,silent=true})

