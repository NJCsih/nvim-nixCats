vim.lsp.enable('marksman')
vim.lsp.config('marksman', {
	cmd = { "marksman", "server" },
	filetypes = { "markdown", "markdown.mdx" },
	-- root_dir = nvim_lsp.util.root_pattern(".git", ".marksman.toml"),
	-- root_dir = root_pattern(".git", ".marksman.toml"),
	single_file_support = true,
})

