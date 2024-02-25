return {

  {
    -- https://github.com/catppuccin/nvim
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = false,
      integrations = {
        notify = true,
        mini = true,
      },
    },
  },
  -- rose-pine
  { "rose-pine/neovim", name = "rose-pine" },
  -- one-dark
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },

  -- Configure LazyVim to load gruvbox 
  { "ellisonleao/gruvbox.nvim" },

  { "Mofiqul/vscode.nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
      -- colorscheme = "catppuccin",
    },
  },
}
