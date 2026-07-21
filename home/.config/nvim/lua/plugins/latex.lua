return {
  -- VimTeX for compiling, viewing and editing LaTeX in Neovim
  {
    "lervag/vimtex",
    lazy = false, -- Load on startup for filetype detection
    init = function()
      -- VimTeX Configuration
      vim.g.vimtex_view_method = "okular"
      vim.g.vimtex_compiler_method = "latexmk"
    end,
  },

  -- Add LaTeX treesitter parser
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts) == "table" and type(opts.ensure_installed) == "table" then
        table.insert(opts.ensure_installed, "latex")
        table.insert(opts.ensure_installed, "bibtex")
      end
    end,
  },

  -- Add Texlab (LSP) and Latexindent (formatter) to Mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      if type(opts) == "table" and type(opts.ensure_installed) == "table" then
        table.insert(opts.ensure_installed, "texlab")
        table.insert(opts.ensure_installed, "latexindent")
      end
    end,
  },
}
