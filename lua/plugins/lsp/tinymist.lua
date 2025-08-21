require('lspconfig').tinymist.setup({
  cmd = { "tinymist" },
  filetypes = { "typst" },
  root_markers = { ".git" },
})
