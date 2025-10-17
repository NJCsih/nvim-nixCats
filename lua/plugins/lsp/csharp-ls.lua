vim.lsp.config.csharp_ls.setup{
    cmd  = { "csharp-ls" },
    filetypes = { "cs" },
    init_options = {
      AutomaticWorkspaceInit = true
    },
    -- root_dir = -- see source file
}
