vim.keymap.set("n", "<leader>n", function() vim.cmd [[ lua require("flash").jump() ]] end) -- Super simple, just jump anywhere
