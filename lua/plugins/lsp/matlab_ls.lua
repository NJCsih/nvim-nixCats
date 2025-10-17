vim.lsp.config.matlab_ls.setup({
	matlab = {
		indexWorkspace = false,
		installPath = "",
		matlabConnectionTiming = "onStart",
		-- TODO Fix root dir? the docs just say "see source file"
		telemetry = false,
	},
})

