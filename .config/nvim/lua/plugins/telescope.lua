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
    local actions = require "telescope.actions"
    
    require("telescope").setup {
      defaults = {
        file_ignore_patterns = { "node_modules", "target" },
        layout_strategy = "horizontal",
        sorting_strategy = "descending",
        prompt_prefix = "   ",
        border = true,
        layout_config = {
          horizontal = {
            prompt_position = "bottom",
            preview_width = 0.5,
            results_width = 0.5,
          },
          vertical = {
            mirror = true,
          },
          width = 0.90,
          height = 0.90,
          preview_cutoff = 10,
        },
        winblend = 0,
        mappings = {
          i = {
            ["<C-l>"] = actions.complete_tag,
          },
          n = {
            ["<C-l>"] = actions.complete_tag,
          },
        },
      },
      pickers = {
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
            main_menu = { [{ "i", "n" }] = "<C-^>" },
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

    -- File and directory searching with menufacture
    vim.keymap.set("n", "<leader>ff", menufacture.find_files, { desc = "[F]ind [F]iles (Ctrl+^ for menu)" })
    vim.keymap.set("n", "<leader><leader>", menufacture.find_files, { desc = "Find Files" })
    
    -- Grep searching with menufacture
    vim.keymap.set("n", "<leader>fg", menufacture.live_grep, { desc = "[F]ind by [G]rep (Ctrl+^ for menu)" })
    vim.keymap.set("n", "<leader>/", menufacture.live_grep, { desc = "Live Grep with Filter" })
    
    -- Standard telescope pickers
    vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
    vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
    vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
    vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
    vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
    vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
    vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
    vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
    vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch [B]uffers" })

    -- Fuzzy search in current buffer
    vim.keymap.set("n", "<leader>s/", function()
      builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = "[S]earch [/] in current buffer" })

    -- Live grep in open files
    vim.keymap.set("n", "<leader>so", function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = "Live Grep in Open Files",
      }
    end, { desc = "[S]earch in [O]pen files" })

    -- Search Neovim config files
    vim.keymap.set("n", "<leader>sn", function()
      builtin.find_files { cwd = vim.fn.stdpath "config" }
    end, { desc = "[S]earch [N]eovim files" })

    -- LSP references with proper encoding
    vim.keymap.set("n", "<leader>fr", function()
      builtin.lsp_references()
    end, { desc = "[F]ind [R]eferences" })
  end,
}
