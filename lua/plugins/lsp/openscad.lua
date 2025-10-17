vim.lsp.enable('openscad_ls')
vim.lsp.config('openscad_ls', {
  cmd = { "openscad-lsp" },
  filetypes = { "openscad", "scad" },
  --root_dir = lspconfig.util.root_pattern('.git', '.jj'); -- todo
  single_file_support = true,
})
