return {
  "nvim-telescope/telescope.nvim",
  event = "VimEnter",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = function()
        return vim.fn.executable "make" == 1
      end,
    },
    { "nvim-telescope/telescope-ui-select.nvim" },
    { "molecule-man/telescope-menufacture" },
    { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
  },
  config = function()
    require("telescope").setup {
      defaults = {
        file_ignore_patterns = { "node_modules", "target", ".git" },
        layout_strategy = "horizontal",
        sorting_strategy = "descending",
        prompt_prefix = "   ",
        layout_config = {
          horizontal = {
            prompt_position = "bottom",
            preview_width = 0.5,
          },
          width = 0.99,
          height = 0.99,
        },
      },
      pickers = {
        lsp_references = {
          fname_width = 50,
          show_line = false,
        },
        lsp_definitions = {
          fname_width = 50,
          show_line = false,
        },
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown(),
        },
        menufacture = {
          mappings = {
            main_menu = { [{ "i", "n" }] = "<C-l>" },
          },
        },
      },
    }

    -- Enable extensions
    pcall(require("telescope").load_extension, "fzf")
    pcall(require("telescope").load_extension, "ui-select")
    pcall(require("telescope").load_extension, "menufacture")

    local builtin = require "telescope.builtin"
    local menufacture = require("telescope").extensions.menufacture

    -- Search files with menufacture (Ctrl+L for filter menu)
    vim.keymap.set("n", "<leader>ff", menufacture.find_files, { desc = "[F]ind [F]iles (Ctrl+L for filters)" })
    vim.keymap.set("n", "<leader><leader>", menufacture.find_files, { desc = "Find Files" })

    -- Search word in files with menufacture (Ctrl+L for filter menu)
    vim.keymap.set("n", "<leader>fg", menufacture.live_grep, { desc = "[F]ind by [G]rep (Ctrl+L for filters)" })
    vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })

    -- LSP: Go to references
    vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "[F]ind [R]eferences" })
    vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "Go to References" })

    -- LSP: Go to definition
    vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "Go to Definition" })

    -- LSP: Code actions
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })

    -- Search document symbols
    vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "[F]ind [S]ymbols" })
    vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, { desc = "[D]ocument [S]ymbols" })
  end,
}
