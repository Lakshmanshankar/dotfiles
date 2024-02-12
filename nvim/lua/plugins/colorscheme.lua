return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  -- rose-pine
  { "rose-pine/neovim", name = "rose-pine" },
  -- github-theme
  { "projekt0n/github-nvim-theme" },
  -- one-dark
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },

  -- Configure LazyVim to load gruvbox 
  {
    "LazyVim/LazyVim",
    -- opts = {
    --   colorscheme = "onedark_dark",
    -- },
  },
}
