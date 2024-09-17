-- This Is just a few misc autocmds which don't really fit the other files.


-- Settings for netrw buffers
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "netrw" },
	callback = function()
		vim.opt_local.number = true
		vim.opt_local.relativenumber = false
	end,
})

vim.api.nvim_create_autocmd("TermOpen", {
	callback = function()
		vim.opt_local.spell = false
		vim.opt_local.scrolloff = 0
		vim.opt_local.sidescrolloff = 0
		vim.opt_local.relativenumber = false
		vim.opt_local.number = false
		vim.opt_local.signcolumn = "no"
		vim.opt_local.statuscolumn = ""
	end,
})
