require'lspconfig'.bashls.setup{
    cmd = { "bash-language-server", "start" },
    filetypes = { "sh" },
    --root_dir = util.find_git_ancestor,
    settings = {
      bashIde = {
        globPattern = "*@(.sh|.inc|.bash|.command)"
      }
    },
    single_file_support = true,
}
