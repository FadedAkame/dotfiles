vim.pack.add({
    -- editor --
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-tree/nvim-tree.lua',
    'https://github.com/ibhagwan/fzf-lua',
    'https://github.com/windwp/nvim-autopairs',
    'https://github.com/akinsho/bufferline.nvim',
    'https://github.com/nvim-treesitter/nvim-treesitter',
    -- lsp --
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/mason-org/mason-lspconfig.nvim',
    'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
    -- completion --
    'https://github.com/L3MON4D3/LuaSnip',
    'https://github.com/rafamadriz/friendly-snippets',
    'https://github.com/saghen/blink.lib',
    'https://github.com/Saghen/blink.cmp',
})

require('raccoon.plugins.colorscheme')
require('raccoon.plugins.editor')
require('raccoon.plugins.lsp')
require('raccoon.plugins.completion')
