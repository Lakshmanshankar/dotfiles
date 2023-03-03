local M = {
	filetype = {
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		typescript = {
			-- formatting = function()
			-- 	local root_dir = vim.fn.getcwd()
			-- 	if root_dir:find "biome.json" then
			-- 		return require("formatter.filetypes.typescript").biome
			-- 	else
			-- 		return require("formatter.filetypes.typescript").prettier
			-- 	end
			-- end,
			require("formatter.filetypes.typescript").prettier,
		},
		javascriptreact = {
			require("formatter.filetypes.typescript").prettier,
		},
		typescriptreact = {
			require("formatter.filetypes.typescript").prettier,
		},
		python = {
			require("formatter.filetypes.python").black,
		},
		cpp = {
			require("formatter.filetypes.cpp").clangformat,
		},
		c = {
			require("formatter.filetypes.c").clangformat,
		},
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		css = {
			require("formatter.filetypes.css").prettier,
		},
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	command = "FormatWriteLock",
})

return M
