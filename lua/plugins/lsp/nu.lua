vim.lsp.enable('nushell')
vim.lsp.config('nushell', {
    cmd = { "nu", "--lsp" },
    filetypes = { "nu" },
})
