require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "bash", "c", "cpp", "go", "javascript",
    "lua", "python", "rust", "typescript",
    "yaml", "json", "html", "css",
  },
  sync_install = false,    -- install in background
  auto_install = true,     -- install missing parsers on buffer enter

  -- Highlighting
  highlight = {
    enable = true,         -- false will disable the whole extension
    additional_vim_regex_highlighting = false,
  },

  -- Indentation based on treesitter nodes
  indent = {
    enable = true,
  },

  -- Incremental selection (expand/shrink node under cursor)
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",      -- start selection
      node_incremental = "grn",    -- expand to next node
      scope_incremental = "grc",   -- expand to scope
      node_decremental = "grm",    -- shrink to previous node
    },
  },
}
