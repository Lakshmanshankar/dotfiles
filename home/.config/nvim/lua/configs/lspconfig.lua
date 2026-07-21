require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "vtsls", "biome", "gopls", "tailwindcss", "pylsp", "texlab" }
vim.lsp.enable(servers)

vim.lsp.config("pylsp", {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false,
        },
        pyflakes = {
          enabled = false,
        },
        mccabe = {
          enabled = false,
        },
      },
    },
  },
})

vim.lsp.enable "pylsp"

-- read :h vim.lsp.config for changing options of lsp servers
