local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    -- ["<leader>h"] = "",
    ["<C-a>"] = "",
    -- ["<Tab>"] = "", turn on this only when u have copilot she deserves a TAB
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require("dap-python").test_method()
      end,
    },
  },
}

-- Your custom mappings
M.abc = {
  n = {
    ["<C-n>"] = { "<cmd> Telescope <CR>", "Telescope" },
    ["<leader>|"] = { "<cmd> vsp <CR>", " Vertical split" },
    ["<leader>_"] = { "<cmd> sp <CR>", " Horizontal split" },
    ["<leader>e"] = { "<cmd> NvimTreeToggle<CR>", "Toggle NvimTree" },
    ["<C-s>"] = { ":Telescope Files <CR>", "Telescope Files" },
    ["<C-e>"] = { ":Lazy load conform.nvim <CR>", "Telescope Files" },
  },
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}

return M
