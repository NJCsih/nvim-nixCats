require('lspconfig').nushell.setup({
    cmd = { "nu", "--lsp" },
    filetypes = { "nu" },
})
