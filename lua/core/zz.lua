-- Contains remaps which allow for my preferred cursor centering.
-- very high scrolloff is insufficient and autocmding "CursorMoved" to zz is overbearing

-- Visual Mode(s)
vim.api.nvim_create_autocmd({ "CursorHold" }, {
  -- pattern = { "bash"  -- make this not work on a terminal window
  callback = function()
    local currentMode = vim.api.nvim_get_mode().mode
    if (currentMode ~= 'n') then
      vim.cmd([[exec 'norm zz']])
    end
  end,
})
