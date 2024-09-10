vim.keymap.set("n", "<leader>fk", function() vim.cmd [[ lua require("flash").jump({search = {forwards = false}}) ]] end) -- Switch to the nicer vim.cmd (is that even the right way to call lua?)
vim.keymap.set("n", "<leader>fj", function() vim.cmd [[ lua require("flash").jump() ]] end) -- Switch to the nicer vim.cmd (is that even the right way to call lua?)
