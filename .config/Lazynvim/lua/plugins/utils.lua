return {
	-- EMOJI PICKER
	{
		"stevearc/dressing.nvim",
		{
			"ziontee113/icon-picker.nvim",
			config = function()
				require("icon-picker").setup {
					disable_legacy_commands = true,
				}
			end,
		},
	},
	-- LIVE SERVER
	{
		"barrett-ruth/live-server.nvim",
		build = "pnpm add -g live-server",
		args = { "--port=5500", "--browser=firefox" },
		config = true,
	},

	{
		"theprimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("harpoon").setup()
			local harpoon = require "harpoon"

			local conf = require("telescope.config").values
			local function toggle_telescope(harpoon_files)
				local file_paths = {}
				for _, item in ipairs(harpoon_files.items) do
					table.insert(file_paths, item.value)
				end

				require("telescope.pickers")
					.new({}, {
						prompt_title = "Harpoon",
						finder = require("telescope.finders").new_table {
							results = file_paths,
						},
						previewer = conf.file_previewer {},
						sorter = conf.generic_sorter {},
					})
					:find()
			end

			vim.keymap.set("n", "<leader>hh", function()
				toggle_telescope(harpoon:list())
			end, { desc = "Open harpoon window" })
		end,
		keys = {
			{
				"<leader>ha",
				function()
					require("harpoon"):list():append()
				end,
				desc = "harpoon add file",
			},
			{
				"<leader>hf",
				function()
					local harpoon = require "harpoon"
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "harpoon quick menu",
			},
		},
	},
	-- {
	--   "rmagatti/auto-session",
	--   config = function()
	--     require("auto-session").setup({
	--       log_level = "error",
	--       auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
	--     })
	--   end,
	-- },
	--
	{
		"ThePrimeagen/refactoring.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("refactoring").setup()
		end,
	},
	-- DISABLE NOICE
	{
		"folke/noice.nvim",
		opts = {
			presets = {
				lsp_doc_border = true,
			},
			lsp = {
				progress = {
					enabled = true,
				},
			},
			messages = {
				enabled = false,
			},
		},
	},

	{
		{
			"rcarriga/nvim-notify",
			opts = {
				background_colour = "#000000",
				-- level = vim.log.levels.WARN, -- help vim.log.levels
				render = "minimal",
				stages = "static",
			},
		},
	},

	{
		"johmsalas/text-case.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			require("textcase").setup {}
			require("telescope").load_extension "textcase"
		end,
		keys = {
			"ga", -- Default invocation prefix
			{
				"<leader>ch",
				"<cmd>TextCaseOpenTelescopeLSPChange<CR>",
				mode = { "n", "x" },
				desc = "Telescope Case Convert",
			},
		},
		cmd = {
			-- NOTE: The Subs command name can be customized via the option "substitude_command_name"
			"Subs",
			"TextCaseOpenTelescope",
			"TextCaseOpenTelescopeQuickChange",
			"TextCaseOpenTelescopeLSPChange",
			"TextCaseStartReplacingCommand",
		},
		-- If you want to use the interactive feature of the `Subs` command right away, text-case.nvim
		-- has to be loaded on startup. Otherwise, the interactive feature of the `Subs` will only be
		-- available after the first executing of it or after a keymap of text-case.nvim has been used.
		lazy = false,
	},

	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		opts = { options = vim.opt.sessionoptions:get() },
  -- stylua: ignore
  keys = {
    { "<leader>qs", function() require("persistence").load() end, desc = "Restore Session" },
    { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
    { "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
  },
	},
}
