vim.lsp.enable('nixd')
vim.lsp.config('nixd', {
    cmd = { "nixd" },
    filetypes = { "nix" },
    --root_dir = root_pattern("flake.nix",".git"),
    single_file_support = true,
})
