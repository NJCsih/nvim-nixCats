vim.lsp.enable('ruff')
vim.lsp.config('ruff', {
  cmd = { 'ruff', 'server' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git', '.jj', '.py_root_marker' },
  settings = {},
})
