local lspconfig = require('lspconfig')

-- TypeScript language server
lspconfig.ts_ls.setup {}

-- Python language server
lspconfig.pyright.setup {}

-- Ruff
lspconfig.ruff.setup {
  trace = 'messages',
  init_options = {
    settings = {
      logLevel = 'debug',
    }
  }
}

-- LSP-related keymaps
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap = true, silent = true })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { noremap = true, silent = true })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { noremap = true, silent = true })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { noremap = true, silent = true })

-- Diagnostics
vim.fn.sign_define('DiagnosticSignError', { text = '✗', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn',  { text = '!',  texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo',  { text = 'ℹ',  texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint',  { text = '✔',  texthl = 'DiagnosticSignHint' })
