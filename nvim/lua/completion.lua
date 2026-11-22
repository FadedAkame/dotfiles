local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup({
    keymap = {
        preset = 'none',

        ['<Tab>'] = {
            'select_next',
            'fallback',
        },

        ['<S-Tab>'] = {
            'select_prev',
            'fallback',
        },

        ['<CR>'] = {
            'accept',
            'fallback',
        },
    },

    completion = {
        menu = {
            auto_show = true,
        },

        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
        },

        list = {
            selection = {
                preselect = false,
            },
        },
    },

    signature = {
        enabled = true,
        window = {
            border = 'rounded',
            show_documentation = true,
        },
    },
})
