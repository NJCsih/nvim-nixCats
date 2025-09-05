require("nvim-activate").setup() -- Not needed, fun fact

-- Just make a lil keybind to toggle it
vim.keymap.set("n", "<leader>tna", function() require("nvim-activate").hide() end)

vim.api.nvim_create_autocmd("VimEnter", {
  once = true,
  callback = function()
    vim.defer_fn(function()
      vim.g.nvimactivate_disable = true
      require("nvim-activate").hide()
    end, 60000) -- in ms
  end,
})
