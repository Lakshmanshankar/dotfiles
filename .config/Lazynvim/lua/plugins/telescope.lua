return {
	{
		"molecule-man/telescope-menufacture",
	},
	{
		"nvim-telescope/telescope.nvim",
		-- opts = {},
		config = function()
			require("telescope").load_extension "menufacture"

			require("telescope").setup {
				defaults = {
					file_ignore_patterns = { "node_modules", "target" },
					layout_strategy = "horizontal",
					sorting_strategy = "descending",
					layout_config = {
						horizontal = {
							prompt_position = "bottom",
							preview_width = 0.6, -- Increase this value to make the preview wider
							results_width = 0.5, -- Decrease this value to make the results narrower
						},
						vertical = {
							mirror = true,
						},
						width = 0.90,
						height = 0.90,
						preview_cutoff = 10,
					},
					-- sorting_strategy = "ascending",
					winblend = 0,
				},
			}
		end,
		keys = {
			{
				"<leader>j",
				function()
					require("telescope.builtin").find_files { cwd = require("lazy.core.config").options.root }
				end,
				desc = "Find Plugin File",
			},
		},
		-- change some options
	},
}
