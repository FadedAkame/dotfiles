vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Options --
local o = vim.opt

-- UI
o.number = true
o.relativenumber = true
o.cursorline = true
o.wrap = false
o.scrolloff = 10
o.sidescrolloff = 8
o.termguicolors = true
o.signcolumn = 'yes'
o.cmdheight = 1
o.showmode = false
o.colorcolumn = "100"

-- Indentation
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true
o.smartindent = true
o.autoindent = true

-- Search
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.incsearch = true

-- Files / persistence
o.backup = false
o.writebackup = false
o.swapfile = false
o.undofile = true

local undodir = vim.fn.expand('~/.nvim/undodir')
vim.fn.mkdir(undodir, 'p')
o.undodir = undodir

o.updatetime = 300
o.timeoutlen = 500
o.ttimeoutlen = 0
o.autoread = true
o.autowrite = false

-- Behavior
o.clipboard = 'unnamedplus'
o.hidden = true
o.modifiable = true
o.selection = 'inclusive'

-- Plugins --
vim.pack.add({
    -- Editor
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-tree/nvim-tree.lua',
    'https://github.com/ibhagwan/fzf-lua',
    'https://github.com/windwp/nvim-autopairs',
    'https://github.com/akinsho/bufferline.nvim',
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/MeanderingProgrammer/render-markdown.nvim',
    -- LSP
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/mason-org/mason-lspconfig.nvim',
    'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
    -- Completion
    'https://github.com/saghen/blink.lib',
    'https://github.com/Saghen/blink.cmp',
})

require('colorscheme')
require('editor')
require('lsp')
require('completion')

-- General keymaps --
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch | echo<CR>')
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>')
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<leader>mm', '<cmd>make -j6 | cwindow<CR>')

-- Editor keymaps --
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')

local fzf = require('fzf-lua')
vim.keymap.set('n', '<leader>ff', fzf.files)
vim.keymap.set('n', '<leader>fg', fzf.live_grep)
vim.keymap.set('n', '<leader>fb', fzf.buffers)

for i = 1, 9 do
    vim.keymap.set('n', '<leader>' .. i, function()
        require('bufferline').go_to(i, true)
    end)
end

vim.keymap.set('n', '<leader>0', function()
    require('bufferline').go_to(10, true)
end)

vim.keymap.set('n', '<leader>x', function()
    local current = vim.api.nvim_get_current_buf()
    vim.cmd('bprevious')
    vim.cmd('bdelete ' .. current)
end)

-- LSP keymaps --
-- Goto 'lsp.lua' these cannot be implemented here unless I find another way
-- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
-- vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
-- vim.keymap.set('n', '<leader>D', vim.diagnostic.open_float, opts)
