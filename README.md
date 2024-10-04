
# Neovim Configuration Guide

This is a comprehensive guide to using the custom Neovim configuration I created. Follow these steps to install, use, and enhance your Neovim setup.

## Prerequisites

Make sure you have the following installed:

- **Neovim**: Version 0.5 or higher.
- **Git**: To clone this repository and manage plugins.
- **Node.js**: Required for some language servers and tools.
- **Python 3**: Used for Python-based plugins.

## Installation

1. **Clone the repository:**

   Open a terminal and run:

   ```bash
   git clone https://github.com/TolikMuradov/neovim-config.git ~/.config/nvim
   ```

2. **Install the plugins:**

   After cloning, launch Neovim and install the plugins using the built-in plugin manager:

   ```bash
   nvim
   :Lazy
   ```

   This will automatically install all the necessary plugins.

3. **Install Language Servers:**

   Using Mason to manage language servers:

   ```bash
   :Mason
   ```

   Install the relevant language servers for the languages you're working with. For example, for JavaScript, TypeScript, and Python, you can install `tsserver`, `pyright`, etc.

## Key Features

### 1. **Plugin Management - Lazy.nvim**

   The configuration uses [Lazy.nvim](https://github.com/folke/lazy.nvim) for managing Neovim plugins. It’s an easy-to-use and efficient plugin manager. To add or remove plugins, modify the `~/.config/nvim/lua/custom/plugins.lua` file.

### 2. **LSP (Language Server Protocol) Integration**

   Language Server Protocol (LSP) is integrated using the built-in LSP client and additional plugins like `mason.nvim` and `nvim-lspconfig`. This provides intelligent autocompletion, error checking, and code formatting.

   - To see diagnostics:
     ```bash
     :TroubleToggle
     ```

   - To format the current file:
     ```bash
     :Format
     ```

### 3. **Treesitter Syntax Highlighting**

   Enhanced syntax highlighting is achieved using Treesitter. To ensure it’s up to date:

   ```bash
   :TSUpdate
   ```

### 4. **File Explorer - Neo-tree**

   `neo-tree.nvim` is used for file navigation. You can open the file explorer using the following command:

   ```bash
   :Neotree
   ```

   Close it with the same command, or press `<leader>e` for toggling.

### 5. **Snippets**

   Snippets are handled via `LuaSnip`, which provides fast, flexible code snippets. Trigger them with the `<Tab>` key when available.

### 6. **Bufferline**

   Easily navigate between open buffers with bufferline. You can move between buffers using:

   - `:bnext` to go to the next buffer.
   - `:bprev` to go to the previous buffer.

   You can also see a visual representation of the open buffers at the top of the window.

### 7. **Terminal Integration - ToggleTerm**

   You can open an integrated terminal within Neovim using the `toggleterm.nvim` plugin:

   - Press `<C-\>` to toggle the terminal.
   - Create multiple terminals and switch between them effortlessly.

### 8. **Git Integration - Gitsigns**

   Git integration is provided via `gitsigns.nvim`. You can see git changes directly in the editor, and manage staging and commits from within Neovim.

   - View Git status in the sidebar.
   - Stage and unstage changes easily.

### 9. **Troubleshooting with Trouble.nvim**

   Use `trouble.nvim` to navigate through diagnostics, references, and other issues in your code. To toggle the trouble list:

   ```bash
   :TroubleToggle
   ```

### 10. **Statusline - Lualine**

   A clean and informative statusline is provided via `lualine.nvim`. It shows the current mode, file information, diagnostics, and git status.

## Custom Keybindings

Here are some of the custom keybindings used in this configuration:

- **Explorer Toggle**: `<leader>e` to toggle Neo-tree.
- **Format Code**: `<leader>f` to format the current buffer using LSP.
- **Toggle Terminal**: `<C-\>` to toggle the terminal.
- **Navigate Buffers**: `<Tab>` for the next buffer, `<S-Tab>` for the previous buffer.

## Customization

You can further customize your Neovim configuration by editing the files in `~/.config/nvim/lua/custom/`. The configuration is modular, so each part (plugins, keymaps, options) is organized separately.

- **Add plugins**: Modify `plugins.lua`.
- **Change keybindings**: Modify `keymaps.lua`.
- **Update options**: Modify `options.lua`.

## Conclusion

This Neovim setup is designed to be modern, efficient, and easy to customize. Whether you're a seasoned developer or just getting started, this configuration provides a solid foundation to improve your productivity. Feel free to explore and adjust the configuration to suit your workflow!
