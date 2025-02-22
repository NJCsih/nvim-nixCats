-- nnoremap <leader>p :lua require("nabla").popup()<CR> " Customize with popup({border = ...})  : `single` (default), `double`, `rounded`
vim.keymap.set("n", "<leader>na", function() vim.cmd [[ lua require('nabla').popup({border = 'rounded'}) ]] end) -- Switch to the nicer vim.cmd (is that even the right way to call lua?)
