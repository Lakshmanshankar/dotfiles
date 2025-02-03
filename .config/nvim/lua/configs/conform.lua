local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		css = { "prettier" },
		html = { "prettier" },
		typescript = { "prettier" },
		javascript = { "prettier" },
		python = { "black" },
		json = { "prettier" },
		typescriptreact = { "prettier" },
		cpp = { "clang-format" },
		c = { "clang-format" },
		go = { "gofumpt" },
	},

	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 1000,
		lsp_fallback = true,
	},
}

return options
