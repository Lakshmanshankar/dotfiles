return {
  "stevearc/conform.nvim",
  dependencies = { "mason.nvim" },
  lazy = true,
  cmd = "ConformInfo",

  keys = {
    {
      "<leader>cF",
      function()
        require("conform").format({ formatters = { "injected" } })
      end,
      mode = { "n", "v" },
      desc = "Format Injected Langs",
    },
  },

  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      sh = { "shfmt" },
      typescriptreact = { "biome" },
      javascriptreact = { "biome" },
      javascript = { "biome" },
      typescript = { "biome" },
      css = { "prettierd" },
      html = { "prettierd" },
      json = { "prettierd" },
    },
  },
}
