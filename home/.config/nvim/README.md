# 🌙 NvChad Neovim Configuration

This is a personal Neovim configuration built on top of [NvChad (v2.5)](https://nvchad.com/). It is heavily customized for modern web development (TypeScript, React, Astro), Go, and general editing, focusing on aesthetics and productivity.

## ✨ Features

- **Base Framework:** NvChad (v2.5) with `lazy.nvim` plugin manager.
- **Theme:** [Catppuccin](https://github.com/catppuccin/nvim) via NvChad's `base46` with a transparent background.
- **AI Completion:** Integrated with [Supermaven](https://supermaven.com/) for lightning-fast AI suggestions.
- **LSP & Formatting:** 
  - Managed via `mason.nvim`.
  - Configured servers: `vtsls`, `biome`, `gopls`, `tailwindcss`, `html`, `cssls`.
  - Formatting via `conform.nvim` (`biome` for JS/TS, `prettier` for HTML/CSS, `stylua` for Lua).
- **Advanced Searching:** 
  - `telescope.nvim` powered by `fzf-native` and `telescope-menufacture` for advanced filtering.
  - Project-wide search and replace with `nvim-spectre`.
- **Navigation & Workflow:**
  - Lightning-fast file navigation with `harpoon2`.
  - Text case conversion with `text-case.nvim`.
  - Built-in Git integration with `gitsigns.nvim`.
- **Treesitter:** Syntax highlighting for various languages including TSX, JSX, Markdown, JSON, YAML, and Astro.

## 📦 Key Plugins

| Plugin | Description |
|--------|-------------|
| [Supermaven](https://github.com/supermaven-inc/supermaven-nvim) | AI code completion. |
| [Telescope](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder for files, grepping, LSP, etc. |
| [Harpoon (v2)](https://github.com/ThePrimeagen/harpoon/tree/harpoon2) | Getting around files with blazingly fast speed. |
| [Spectre](https://github.com/nvim-pack/nvim-spectre) | Search and replace panel. |
| [Conform](https://github.com/stevearc/conform.nvim) | Lightweight formatting engine. |
| [Text Case](https://github.com/johmsalas/text-case.nvim) | All-in-one text case conversion. |
| [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) | Git integration for buffers. |

## ⌨️ Keybindings

The `<leader>` key is mapped to `<Space>`. 
Here are some of the most used custom bindings (see `lua/mappings.lua` for the full list):

### General
- `;` - Enter command mode (`:` equivalent)
- `jk` - Exit insert mode (`<ESC>`)
- `<C-d>` / `<C-u>` - Scroll down/up and center cursor
- `<leader>\|` - Vertical split
- `<leader>-` - Horizontal split
- `<leader>e` - Toggle NvimTree
- `<leader>fm` - Format file

### Telescope
- `<leader>ff` or `<leader><leader>` - Find files (uses `menufacture` for `Ctrl+L` filters)
- `<leader>sw` - Grep in files
- `gd` - LSP: Go to definition
- `gr` or `<leader>fr` - LSP: Go to references
- `<leader>ca` - LSP: Code action
- `<leader>fs` or `<leader>ds` - LSP: Document symbols

### Harpoon
- `<leader>aa` - Add file to Harpoon
- `<leader>ah` - Harpoon quick menu
- `<leader>at` - View Harpoon list in Telescope

### Git
- `<leader>gs` - Git status (Telescope)
- `<leader>gc` - Git commits (Telescope)
- `<leader>gb` - Git blame line
- `<leader>hs` / `<leader>hr` - Stage / Reset hunk (Gitsigns)

### Supermaven (Insert Mode)
- `<C-l>` - Accept suggestion
- `<C-]>` - Clear suggestion
- `<C-j>` - Accept word

### Buffers (Tabufline)
- `<tab>` / `<S-tab>` - Go to next/previous buffer
- `<leader>b` - New buffer
- `<leader>x` - Close buffer

## ⚙️ Core Options

- **Indentation:** 2 spaces (`tabstop=2`, `shiftwidth=2`, `expandtab=true`).
- **Numbers:** Relative line numbers are enabled.
- **Clipboard:** Synced with the OS clipboard (`unnamedplus`).
- **Undo History:** Persisted to `~/.vim/undodir`.
- **Search:** Case-insensitive by default, smart case if capital letters are used.

*Note: You may need to install external dependencies like `ripgrep`, `fd`, `make`, and a Nerd Font depending on your system for all plugins to work optimally.*
