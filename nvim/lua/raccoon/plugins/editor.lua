require('nvim-web-devicons').setup()

require('nvim-tree').setup({
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = '',
                    arrow_open = '',
                    default = '',
                    open = '',
                    empty = '',
                    empty_open = '',
                    symlink = '',
                },
            },
        },
    },
})
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')

local fzf = require('fzf-lua')
vim.keymap.set('n', '<leader>ff', fzf.files)
vim.keymap.set('n', '<leader>fg', fzf.live_grep)
vim.keymap.set('n', '<leader>fb', fzf.buffers)

require('nvim-autopairs').setup()

require('bufferline').setup({
    options = {
        separator_style = 'slant',
    },
})

for i = 1, 9 do
    vim.keymap.set('n', '<leader>' .. i, function()
        require('bufferline').go_to(i, true)
    end, { desc = 'Go to buffer ' .. i })
end

vim.keymap.set('n', '<leader>0', function()
    require('bufferline').go_to(10, true)
end)

vim.keymap.set('n', '<leader>x', function()
    require('bufferline').cycle(1)
    vim.cmd('bdelete #')
end)

require('nvim-treesitter').setup({
    ensure_installed = {
        'lua',
        'python',
        'vim',
        'vimdoc',
        'query',
        'c',
        'cpp',
        'rust',
        'zig',
    },

    highlight = {
        enable = true,
    },

    indent = {
        enable = true,
    },
})
