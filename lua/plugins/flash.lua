vim.keymap.set('n', '<leader>ff', require("flash").jump({
  search = { forward = true, wrap = false, multi_window = false },
}))
