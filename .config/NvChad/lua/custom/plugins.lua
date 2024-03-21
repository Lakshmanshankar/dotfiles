local plugins = {

	-- mason needs no reason
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				-- web dev
				"eslint-lsp",
				"biome",
				"js-debug-adapter",
				"prettier",
				"typescript-language-server",
				"html-lsp",

				-- denolsp honestly its far better than tsserver love it
				"deno",

				--python
				"pyright",
				"isort", --formmating
				"debugpy",
				"black",

				-- c/cpp features
				"clangd",
				"clang-format",

				--lua and others
				"stylua",
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
			{ "ga.", "<cmd>TextCaseOpenTelescope<CR>", mode = { "n", "x" }, desc = "Telescope" },
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

	-- better diagnostics list and others
	{
		"folke/trouble.nvim",
		cmd = { "TroubleToggle", "Trouble" },
		opts = { use_diagnostic_signs = true },
		keys = {
			{ "<leader>xx", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
			{ "<leader>xX", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
			{ "<leader>xL", "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" },
			{ "<leader>xQ", "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" },
			{
				"[q",
				function()
					if require("trouble").is_open() then
						require("trouble").previous { skip_groups = true, jump = true }
					else
						local ok, err = pcall(vim.cmd.cprev)
						if not ok then
							vim.notify(err, vim.log.levels.ERROR)
						end
					end
				end,
				desc = "Previous trouble/quickfix item",
			},
			{
				"]q",
				function()
					if require("trouble").is_open() then
						require("trouble").next { skip_groups = true, jump = true }
					else
						local ok, err = pcall(vim.cmd.cnext)
						if not ok then
							vim.notify(err, vim.log.levels.ERROR)
						end
					end
				end,
				desc = "Next trouble/quickfix item",
			},
		},
	},
	{
		"folke/todo-comments.nvim",
		cmd = { "TodoTrouble", "TodoTelescope" },
		config = true,
    -- stylua: ignore
        keys = {
            { "]t", function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
            { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
            { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo (Trouble)" },
            { "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
            { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
            { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
        },
	},
	{
		"nvim-pack/nvim-spectre",
		build = false,
		cmd = "Spectre",
		opts = { open_cmd = "noswapfile vnew" },
    -- stylua: ignore
        keys = {
            { "<leader>sr", function() require("spectre").open() end, desc = "Replace in files (Spectre)" },
        },
	},
	-- Liveserver
	{
		"barrett-ruth/live-server.nvim",
		build = "pnpm add -g live-server",
		cmd = { "LiveServerStart", "LiveServerStop" },
		config = true,
	},
	{
		"simrat39/symbols-outline.nvim",
		keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
		cmd = "SymbolsOutline",
		opts = function() end,
	},
	-- {
	--   "s1n7ax/nvim-window-picker",
	--   name = "window-picker",
	--   event = "VeryLazy",
	--   version = "2.*",
	--   cmd = { "IconPickerYank" },
	--   config = function()
	--     require("window-picker").setup()
	--   end,
	-- },
	-- Prime HARPOON 2 & Refactor
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
	{
		"ThePrimeagen/refactoring.nvim",
		cmd = { "Refactor" },
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("refactoring").setup()
		end,
	},
	{
		"github/copilot.vim",
		cmd = { "Copilot" },
	},
	{
		"kdheepak/lazygit.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
		},
		cmd = { "LazyGit" },
		config = function()
			require("telescope").load_extension "lazygit"
		end,
	},

	-- syntax highlighting for our own languages
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"lua",

				-- web dev
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"json",

				-- attohallan
				"cpp",
				"python",
			},
		},
	},
	-- 1.lsp servers
	-- 2. linters
	-- 3. formatters
	-- 1. loads configuration file for all the lspservers
	{
		"neovim/nvim-lspconfig",
		config = function()
			require "plugins.configs.lspconfig"
			require "custom.configs.lspconfig"
		end,
	},

	{
		"ziontee113/icon-picker.nvim",
		cmd = { "IconPickerYank", "IconPickerNormal", "IconPickerInsert" },
		config = function()
			require("icon-picker").setup { disable_legacy_commands = true }

			local opts = { noremap = true, silent = true }

			vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
			vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
			vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
		end,
	},

	-- 2. loads configuration file for all the linters
	{
		"mfussenegger/nvim-lint",
		-- event = "verylazy",
		config = function()
			require "custom.configs.lint"
		end,
	},

	-- 3. FORMATTER CONFIG MOVE THIS TO NEW FILE IN FUTURE
	{
		"mhartington/formatter.nvim",
		event = "VeryLazy",
		opts = function()
			return require "custom.configs.formatter"
		end,
	},
	--  {
	--   "stevearc/conform.nvim",
	--   --  for users those who want auto-save conform + lazyloading!
	--   -- event = "BufWritePre"
	--   config = function()
	--     require "custom.configs.conform"
	--   end,
	-- },
	-- 4. DEBUGGER CONFIG
	{
		"rcarriga/nvim-dap-ui",
		dependencies = "mfussenegger/nvim-dap",
		config = function()
			local dap = require "dap"
			local dapui = require "dapui"
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
	{
		"mfussenegger/nvim-dap",
		config = function(_, opts)
			require("core.utils").load_mappings "dap"
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
		},
		config = function(_, opts)
			local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
			require("dap-python").setup(path)
			require("core.utils").load_mappings "dap_python"
		end,
	},
}

return plugins
