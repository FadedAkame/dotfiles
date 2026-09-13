require('mason').setup()
require('mason-lspconfig').setup()

require('mason-tool-installer').setup({
    ensure_installed = {
        'lua_ls',
        'stylua',
        'basedpyright',
        'clangd',
        'rust_analyzer',
        'zls',
    },
})

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
        },
    },
})

vim.lsp.enable({
    'lua_ls',
    'basedpyright',
    'clangd',
    'rust_analyzer',
    'zls',
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local opts = { buffer = ev.buf }

        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)

        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client and client.name == 'clangd' then
            vim.api.nvim_create_autocmd('BufWritePre', {
                buffer = ev.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 2000 })
                end,
            })
        end
    end,
})
