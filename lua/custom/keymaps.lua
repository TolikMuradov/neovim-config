local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Kaydet
map('n', '<C-s>', ':w<CR>', opts)

-- Çıkış
map('n', '<C-q>', ':q<CR>', opts)

-- Telescope ile dosya bulma
map('n', '<C-p>', ':Telescope find_files<CR>', opts)
-- Proje içinde içerik arama (Ctrl+F ile dosya içi içerik arama yapar)
map('n', '<C-g>', ':Telescope live_grep<CR>', opts)

-- Açık buffer'lar arasında geçiş (Leader + b ile açık buffer'ları gösterir)
map('n', '<leader>b', ':Telescope buffers<CR>', opts)

-- Neovim yardım dokümanlarında arama yapma (Leader + h ile yardım belgelerine ulaşır)
map('n', '<leader>h', ':Telescope help_tags<CR>', opts)

-- Buffer yönetimi
map('n', '<leader>bn', ':bnext<CR>', opts)
map('n', '<leader>bp', ':bprevious<CR>', opts)

-- Neo-tree'yi aç/kapat (Leader + e ile)
vim.api.nvim_set_keymap("n", "<leader>e", ":NeoTreeRevealToggle<CR>", { noremap = true, silent = true })


-- LSP Saga Kısayolları
vim.api.nvim_set_keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { noremap = true, silent = true })



-- Trouble aç/kapat (Leader + x ile
vim.api.nvim_set_keymap("n", "<leader>z", ":TroubleToggle<CR>", { noremap = true, silent = true })

-- Belge hatalarını göster (Leader + xd ile)
vim.api.nvim_set_keymap("n", "<leader>xd", ":Trouble document_diagnostics<CR>", { noremap = true, silent = true })

-- Çalışma alanı hatalarını göster (Leader + xw ile)
vim.api.nvim_set_keymap("n", "<leader>xw", ":Trouble workspace_diagnostics<CR>", { noremap = true, silent = true })

-- Hatalara gitmek için
vim.api.nvim_set_keymap("n", "<leader>xl", ":Trouble loclist<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>xq", ":Trouble quickfix<CR>", { noremap = true, silent = true })


-- Terminali Ctrl + \ ile aç/kapat
vim.api.nvim_set_keymap("n", "<C-\\>", ":ToggleTerm<CR>", { noremap = true, silent = true })

-- Dikey terminal açmak için Leader + v
vim.api.nvim_set_keymap("n", "<leader>v", ":ToggleTerm direction=vertical<CR>", { noremap = true, silent = true })

-- Yatay terminal açmak için Leader + h
vim.api.nvim_set_keymap("n", "<leader>h", ":ToggleTerm direction=horizontal<CR>", { noremap = true, silent = true })

-- Yüzen terminal açmak için Leader + t
vim.api.nvim_set_keymap("n", "<leader>t", ":ToggleTerm direction=float<CR>", { noremap = true, silent = true })


-- Gitsigns kısayolları
vim.api.nvim_set_keymap("n", "]c", "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true, silent = true })
vim.api.nvim_set_keymap("n", "[c", "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>hs", ":Gitsigns stage_hunk<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>hu", ":Gitsigns undo_stage_hunk<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>hb", ":Gitsigns blame_line<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

-- Keybindings for Tree-sitter incremental selection
vim.keymap.set("n", "gnn", ":lua require'nvim-treesitter'.incremental_selection.init_selection()<CR>")
vim.keymap.set("n", "grn", ":lua require'nvim-treesitter'.incremental_selection.node_incremental()<CR>")
vim.keymap.set("n", "grm", ":lua require'nvim-treesitter'.incremental_selection.node_decremental()<CR>")

-- Toggle folding
vim.keymap.set("n", "za", "za", { noremap = true, silent = true })
