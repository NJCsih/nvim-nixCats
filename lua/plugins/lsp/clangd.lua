require('lspconfig').clangd.setup({
    --capabilities = default capabilities, with offsetEncoding utf-8
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
    single_file_support = true,
})
