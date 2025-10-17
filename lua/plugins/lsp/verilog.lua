vim.lsp.enable('verible')
vim.lsp.config('verible', {
  cmd = { "verible-verilog-ls", "--rules_config_search" },
  filetypes = { "systemverilog", "verilog" },
  root_markers = { ".git", ".jj" },
})
