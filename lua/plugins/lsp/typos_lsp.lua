vim.lsp.enable('typos_lsp')
vim.lsp.config('typos_lsp', {
  cmd = { "typos-lsp" },
  root_markers = { "typos.toml", "_typos.toml", ".typos.toml", "pyproject.toml", "Cargo.toml", ".jj", ".git" },
  settings = {},
})
