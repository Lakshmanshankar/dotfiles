return {
	{
		"nvim-telescope/telescope.nvim",
		keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>j",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
		},
		-- change some options
		opts = {
			defaults = {
				file_ignore_patterns = { "node_modules", "target" },
				layout_strategy = "horizontal",
				sorting_strategy = "descending",
				layout_config = {
					horizontal = {
						prompt_position = "bottom",
						preview_width = 0.6,
						results_width = 0.9,
					},
					vertical = {
						mirror = true,
					},
					width = 0.85,
					height = 0.85,
					preview_cutoff = 120,
				},
				-- sorting_strategy = "ascending",
				winblend = 0,
			},
		},
	},
    },
    -- change some options
    opts = {
      defaults = {
        file_ignore_patterns = { "node_modules" },
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.5,
            results_width = 0.8,
          },
          vertical = {
            mirror = true,
          },
          width = 0.90,
          height = 0.90,
          preview_cutoff = 120,
        },
        -- sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
