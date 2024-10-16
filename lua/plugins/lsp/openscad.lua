-- openscad lsp config
local lspconfig = require('lspconfig')

lspconfig.openscad_ls.setup({
  cmd = { "openscad-lsp" },
  filetypes = { "openscad", "scad" },
  root_dir = lspconfig.util.root_pattern('.git');
  single_file_support = true,
})
