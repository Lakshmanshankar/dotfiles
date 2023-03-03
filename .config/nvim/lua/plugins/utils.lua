return {
  {
    "johmsalas/text-case.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("textcase").setup {}
      require("telescope").load_extension "textcase"
    end,
    keys = {
      "tc", -- Default invocation prefix
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
        "<leader>aa",
        function()
          require("harpoon"):list():add()
        end,
        desc = "harpoon add file",
      },
      {
        "<leader>ao",
        function()
          require("harpoon"):list():next()
        end,
        desc = "harpoon add file",
      },
      {
        "<leader>ai",
        function()
          require("harpoon"):list():prev()
        end,
        desc = "harpoon add file",
      },
      {
        "<leader>ah",
        function()
          local harpoon = require "harpoon"
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "harpoon quick menu",
      },
    },
  },
  -- REFACTORIING
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

  -- LAZYGIT
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    cmd = { "LazyGit" },
    keys = { { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" } },
    config = function()
      require("telescope").load_extension "lazygit"
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  { -- Setup Dressing nvim before
  	"ziontee113/icon-picker.nvim",
  	cmd = { "IconPickerYank", "IconPickerNormal", "IconPickerInsert" },
  	config = function()
  		require("icon-picker").setup { disable_legacy_commands = true }

  		local opts = { noremap = true, silent = true }

  		vim.keymap.set("n", "<leader>ki", "<cmd>IconPickerNormal<cr>", opts)
  		vim.keymap.set("n", "<leader><leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
  		-- vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
  	end,
  },
}
