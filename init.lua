-- init.lua dosyasında LazyVim'i ayarla
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- LazyVim'i başlat
require("lazy").setup({
    require("custom.plugins") -- Tüm eklentileri buradan yükle
})

-- Genel Neovim ayarlarını yükle
require("custom.options")

-- Keymap'leri yükle
require("custom.keymaps")

-- LSP ve Mason yapılandırmalarını yükle
require("custom.lsp")

require("custom.lualine")

require("custom.snippets")

require("custom.null-ls")

require("custom.cmp")

require("custom.neo-tree")

require("custom.lspsaga")

require("custom.lsp-signature")

require("custom.trouble")

require("custom.gitsigns")

require("custom.bufferline")

require("custom.markdown")

require("custom.treesitter")

vim.cmd.colorscheme "tokyonight"

vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
