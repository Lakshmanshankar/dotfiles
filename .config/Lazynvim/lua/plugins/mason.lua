return {
	-- add any tools you want to have installed below
	{
		"williamboman/mason.nvim",
		opts = {

			ensure_installed = {
				-- web dev
				"eslint-lsp",
				-- "js-debug-adapter",
				"prettierd",
				"typescript-language-server",
				"html-lsp",
				"tailwindcss-language-server",
				"rust-analyzer",

				-- denolsp honestly its far better than tsserver love it
				-- "deno",

				--python
				-- "pyright",
				-- "isort", --formmating
				-- "debugpy",
				-- "black",

				-- c/cpp features
				-- "clangd",
				-- "clang-format",

				--lua and others
				"stylua",
			},
		},
	},
}
