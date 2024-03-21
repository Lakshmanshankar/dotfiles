local options = {
	lsp_fallback = true,

  event = { "BufReadPre", "BufNewFile" },
	formatters_by_ft = {
		lua = { "stylua" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
		javascript = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },

		sh = { "shfmt" },
	},
  -- instead of the above code you could just use a loop! the config is just a table after all!

	format_on_save = {
	  -- These options will be passed to conform.format()
	  timeout_ms = 500,
	  lsp_fallback = true,
	},
}

require("conform").setup(options)
