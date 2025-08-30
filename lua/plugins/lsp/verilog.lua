require('lspconfig').verible.setup({
  cmd = { "verible-verilog-ls" },
  filetypes = { "systemverilog", "verilog" },
  root_markers = { ".git", ".jj" },
})
