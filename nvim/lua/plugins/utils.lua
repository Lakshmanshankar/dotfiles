return {
  -- EMOJI PICKER
  {
    "stevearc/dressing.nvim",
    "ziontee113/icon-picker.nvim",
    {
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
}
