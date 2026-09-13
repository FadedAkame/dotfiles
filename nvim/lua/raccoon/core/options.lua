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
o.undodir = vim.fn.expand('~/.nvim/undodir')
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

-- Keymaps
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>')
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
