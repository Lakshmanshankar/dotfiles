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
