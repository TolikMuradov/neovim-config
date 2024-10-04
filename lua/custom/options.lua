-- Genel Neovim ayarları
vim.opt.number = true         -- Satır numaralarını göster
vim.opt.relativenumber = true -- Göreceli satır numaraları
vim.opt.tabstop = 4           -- Sekme genişliği 4 boşluk
vim.opt.shiftwidth = 4        -- Satır başı için 4 boşluk
vim.opt.expandtab = true      -- Tab yerine boşluk kullan
vim.opt.smartindent = true    -- Otomatik satır girintisi
vim.opt.wrap = false          -- Satırları kaydırma
vim.opt.cursorline = true     -- İmleç satırını vurgula



vim.opt.foldmethod = "expr"                     -- Use expression-based folding
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- Use Tree-sitter for folding
vim.opt.foldlevel = 99                          -- Start with all folds open
