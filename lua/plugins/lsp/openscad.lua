-- Minimal zls config for zig language
local lspconfig = require('lspconfig')

lspconfig.openscad_ls.setup({
    cmd = { "openscad-language-server" },
    filetypes = { "openscad" },
    single_file_support = true,
})
