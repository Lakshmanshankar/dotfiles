return {
  "nvim-tree/nvim-tree.lua",

  -- TO SHOW GITIGNORE: SHIFT i and dotfiles SHIFT H
  version = "*",
  lazy = false,

  filters = {
    dotfiles = false,
    exclude = { vim.fn.stdpath("config") .. "/lua/custom" },
  },
  --
  git = {
    enable = false,
    ignore = true,
    unstaged = "✗",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "★",
    deleted = "",
    ignored = "◌",
  },

  keys = {
    { "<leader>e", "<cmd> NvimTreeToggle <cr>", desc = "Nvim Tree Toggle" },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require("nvim-tree").setup({})
  end,
}
