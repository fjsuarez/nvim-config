vim.cmd [[
  call plug#begin(stdpath('data') .. '/plugged')
    Plug 'tpope/vim-sensible'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }
    Plug 'akinsho/toggleterm.nvim', { 'tag': '*' }
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
    Plug 'tpope/vim-obsession'
    Plug 'folke/tokyonight.nvim'
    Plug 'tpope/vim-fugitive'
  call plug#end()
]]

