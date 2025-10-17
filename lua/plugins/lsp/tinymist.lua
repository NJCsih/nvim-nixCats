vim.lsp.enable('tinymist')
vim.lsp.config('tinymist', {
  cmd = { "tinymist" },
  filetypes = { "typst" },
  root_markers = { ".git", ".typst_root" },
})
