vim.lsp.enable('bashls')
vim.lsp.config('bashls', {
    cmd = { "bash-language-server", "start" },
    filetypes = { "sh" },
    --root_dir = util.find_git_ancestor,
    settings = {
      bashIde = {
        globPattern = "*@(.sh|.inc|.bash|.command)"
      }
    },
    single_file_support = true,
})
