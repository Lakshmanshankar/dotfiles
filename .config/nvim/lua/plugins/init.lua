return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Set up capabilities with offset encoding before requiring configs
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.offsetEncoding = { "utf-16" }

      -- Make capabilities available globally or pass to your config
      vim.g.lsp_capabilities = capabilities

      require "configs.lspconfig"
    end,
  },

  -- MASON
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "gopls",
        "biome",
        "vtsls",
        "css-lsp",
        "html-lsp",
        "shfmt",
        "vtsls",
        "prettierd",
        "tailwind-language-server",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "go",
        "vim",
        "astro",
        "markdown",
        "markdown_inline",
        "json",
        "yaml",
        "toml",
        "tsx",
        "typescript",
        "javascript",
        "jsx",
        "html",
        "css",
      },
    },
    -- JSX Plugins
    {
      "windwp/nvim-ts-autotag",
      ft = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "html",
      },
      config = function()
        require("nvim-ts-autotag").setup()
      end,
    },

    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      ft = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
      },
    },
  },
}
