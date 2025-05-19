vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- no files passed on the command line?
    if #vim.fn.argv() == 0
      -- and Session.vim exists in cwd?
      and vim.fn.filereadable("Session.vim") == 1
    then
      vim.cmd("source Session.vim")
    end
  end,
})

vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function()
    -- open the tree window automatically
    require("nvim-tree.api").tree.open()
  end,
})
