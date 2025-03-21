return {
	{
		"catppuccin/nvim",
		lazy = true,
		name = "catppuccin",
		opts = {
			integrations = {
				aerial = true,
				alpha = true,
				cmp = true,
				dashboard = true,
				flash = true,
				gitsigns = true,
				headlines = true,
				illuminate = true,
				indent_blankline = { enabled = true },
				leap = true,
				lsp_trouble = true,
				mason = true,
				markdown = true,
				mini = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				navic = { enabled = true, custom_bg = "lualine" },
				neotest = true,
				neotree = true,
				noice = true,
				notify = true,
				semantic_tokens = true,
				telescope = true,
				treesitter = true,
				treesitter_context = true,
				which_key = true,
			},
		},
	},

	{
		"rebelot/kanagawa.nvim",
		opt = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				float = "transparent",
			},
		},
	},

	-- rose-pine
	{
		"rose-pine/neovim",
		name = "rose-pine",

		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},
	-- one-dark
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
		opt = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},
	-- Configure LazyVim to load gruvbox 
	{
		"ellison/gruvbox.nvim",
		opt = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				float = "transparent",
			},
		},
	},
	{ "Mofiqul/vscode.nvim" },
	-- Configure LazyVim to load gruvbox
	{
		"tiagovla/tokyodark.nvim",
		opts = {
			-- custom options here
		},
		config = function(_, opts)
			require("tokyodark").setup(opts) -- calling setup is optional
		end,
	},

	{
		"tokyonight.nvim",
		opts = {
			transparent = false,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight-night",
			-- colorscheme = "onedark",
			-- colorscheme = "catppuccin-mocha",
		},
	},
}
