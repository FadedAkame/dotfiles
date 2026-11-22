require('nvim-web-devicons').setup()
require('nvim-tree').setup({
    filters = {
        dotfiles = true,
    },
})
require('nvim-autopairs').setup()
require('bufferline').setup()
require('nvim-treesitter').setup({
    ensure_installed = {
        'lua',
        'c',
        'cpp',
        'rust',
        'markdown',
        'markdown_inline',
    },

    highlight = {
        enable = true,
    },

    indent = {
        enable = true,
    },
})

-- Markdown
require("render-markdown").setup({
    enabled = true,
    render_modes = { "n", "c", "t" },

    heading = {
        enabled = true,
        sign = true,
    },

    code = {
        enabled = true,
        style = "full",
        border = "thin",
        language = true,
        position = "left",
    },

    checkbox = {
        enabled = true,
    },

    quote = {
        enabled = true,
    },

    pipe_table = {
        enabled = true,
        style = "full",
    },

    link = {
        enabled = true,
    },

    latex = {
        enabled = true,
    },
})
