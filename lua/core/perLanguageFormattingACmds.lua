-- Contains autocommands which trigger on opening files to set their per-language preferences.


-- NOTATING ----------------------------------------------------------------------------------------

function NotatingSettings()
  vim.opt_local.spell = true
  vim.opt_local.signcolumn = "no"

  vim.opt_local.listchars = {
    --eol = '⤶',
    space = " ",
    trail = "•",
    tab = "| ",
    extends = "◀",
    precedes = "▶",
  }
end

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.norg" },
  callback = function()
    NotatingSettings()
    -- Neorg-specific config goes here
    vim.opt_local.expandtab = true
    vim.opt_local.colorcolumn=""
    vim.opt_local.cursorline = false
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.md" },
  callback = function()
    NotatingSettings()
    -- markdown-specific config goes here
    vim.opt_local.expandtab = false
  end,
})


-- MISC --------------------------------------------------------------------------------------------

-- Create an autocommand that runs nabla on cursor move
-- This is probably massively intensive :p -- TODO rewrite to only be attatched to buffers of the right type.
vim.api.nvim_create_autocmd({ "CursorHold" }, {
    -- pattern = { "bash"  -- make this not work on a terminal window
    callback = function()
        local FileType = vim.bo.filetype
        if (FileType == 'norg' or FileType == 'tex') then
            vim.cmd([[lua require('nabla').popup({border = 'rounded'})]])
        end
    end,
})

-- I believe this is for qmk keyboard config files
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.kbd" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
    vim.opt_local.colorcolumn = "100"
  end,
})

-- For verilog files
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.v" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = false
    vim.opt_local.colorcolumn = "100"
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, { pattern = { "*.txt" },
  callback = function()
    vim.opt_local.spell = true
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, { pattern = { "*.tex" },
  callback = function()
    vim.opt_local.spell = true
  end,
})


-- PROGRAMMING -------------------------------------------------------------------------------------

function LuaStyle()
  vim.opt_local.spell = true

  vim.opt_local.tabstop = 2
  vim.opt_local.softtabstop = 2
  vim.opt_local.shiftwidth = 2
  vim.opt_local.expandtab = true
  vim.opt_local.colorcolumn = "100"
  vim.opt_local.signcolumn = "yes"

  vim.opt_local.listchars = {
    eol = '⤶',
    space = " ",
    trail = "•",
    tab = "| ",
    extends = "◀",
    precedes = "▶",
  }
end

function JavaStyle()
  vim.opt_local.spell = true

  vim.opt_local.tabstop = 4
  vim.opt_local.softtabstop = 4
  vim.opt_local.shiftwidth = 4
  vim.opt_local.expandtab = true
  vim.opt_local.colorcolumn = "80"
  vim.opt_local.signcolumn = "yes"

  vim.opt_local.listchars = {
    eol = '⤶',
    space = "•",
    trail = "•",
    tab = "| ",
    extends = "◀",
    precedes = "▶",
  }
end

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.asm" },
  callback = function()
    JavaStyle()
    vim.opt_local.colorcolumn = 80
    vim.opt_local.expandtab = true
    vim.opt_local.textwidth = 80
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.c", "*.cpp", "*.h", "*.cc" },
  callback = function()
    JavaStyle()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.zig", "*.zir" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.lua" },
  callback = function()
    LuaStyle()
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.nix" },
  callback = function()
    LuaStyle()
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.java" },
  callback = function()
    JavaStyle()
  vim.opt_local.listchars = {
    eol = '⤶',
    space = " ",
    trail = "•",
    tab = "| ",
    extends = "◀",
    precedes = "▶",
  }
  end,
})
