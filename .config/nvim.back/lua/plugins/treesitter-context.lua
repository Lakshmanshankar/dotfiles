return {
  "nvim-treesitter/nvim-treesitter-context",
  opts = { mode = "cursor", max_lines = 3 },
  cmd = { "TSContextEnable","TSContextDisable","TSContextToggle" },
  config = function()
    require("treesitter-context").setup {
      enable = true,
      multiline_threshold = 20,
      on_attach = nil,
    }
  end,
}
