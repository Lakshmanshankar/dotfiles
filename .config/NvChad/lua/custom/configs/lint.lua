require("lint").linters_by_ft = {
	javascript = { "eslint" },
	typescript = { "eslint" },
	typescriptreact = { "eslint" },
	javascriptreact = { "eslint" },
	-- typescript = { "biome" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})

--INFO: LINT CONFIG ENDS HERE
