return {
  -- EMOJI PICKER
  {
    "stevearc/dressing.nvim",
    {
      "ziontee113/icon-picker.nvim",
      config = function()
        require("icon-picker").setup({
          disable_legacy_commands = true,
        })
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
    "ThePrimeagen/harpoon",
    -- opts = {
    --   keys = {
    --     { "<leader>hh", "<cmd>:Telescope harpoon marks <CR>", desc = "Harpoon Marks" },
    --     { "<leader>cR", "<cmd>TypescriptRenameFile<CR>", desc = "Rename File" },
    --   },
    -- },
  },
  --
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
}
