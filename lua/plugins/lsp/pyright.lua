vim.lsp.enable('pyright')
vim.lsp.config('pyright', {
	python = {
		cmd = { "pyright", "--stdio" },

		filetypes = { "python" },

		-- root_dir = see source file

		settings = {
			python = {
				analysis = {
					autoSearchPaths = true,
					diagnosticMode = "openFilesOnly",
					useLibraryCodeForTypes = true,
				},
			},
		},

		single_file_support = true,
	},
})
