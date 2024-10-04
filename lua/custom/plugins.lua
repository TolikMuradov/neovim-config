return {
    -- LazyVim
    { "folke/lazy.nvim" },

    -- LSP (Language Server Protocol) için destek
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim" }, -- LSP sunucularını yönetmek için
    { "williamboman/mason-lspconfig.nvim" },

    -- Autocompletion (tamamlama) eklentileri
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "L3MON4D3/LuaSnip" },
    -- Tamamlama için nvim-cmp ile LuaSnip entegrasyonu
    { "saadparwaiz1/cmp_luasnip" },
    -- VSCode tarzı snippet'ler için hazır paket
    { "rafamadriz/friendly-snippets" },

    -- Dosya ve içerik arama için Telescope
    { "nvim-telescope/telescope.nvim",    requires = { "nvim-lua/plenary.nvim" } },

    -- Statusline için Lualine
    { "nvim-lualine/lualine.nvim" },

    -- Git entegrasyonu için Gitsigns
    { "lewis6991/gitsigns.nvim" },
    -- plenary.nvim, birçok eklentinin bağımlılığıdır
    { "nvim-lua/plenary.nvim" },
    -- Tokyonight teması
    { "folke/tokyonight.nvim" },

    -- null-ls.nvim eklentisi, formatlama ve linting için
    { "jose-elias-alvarez/null-ls.nvim" },
    -- Neo-tree eklentisi
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- İkonlar için
            "MunifTanjim/nui.nvim",
        }
    },
    -- Neo-tree'nin bağımlılığı olan nui.nvim
    { "MunifTanjim/nui.nvim" },
    -- LSP Saga eklentisi
    -- LSP Saga eklentisi
    { "glepnir/lspsaga.nvim",         branch = "main" },
    -- LSP Signature eklentisi
    { "ray-x/lsp_signature.nvim" },
    -- Trouble.nvim, daha iyi hata yönetimi için
    { "folke/trouble.nvim",           requires = "nvim-tree/nvim-web-devicons" },
    -- toggleterm.nvim, terminal entegrasyonu için
    { "akinsho/toggleterm.nvim",      version = "*",                                                config = true },
    -- Gitsigns.nvim, Git değişikliklerini gösterir
    { "lewis6991/gitsigns.nvim",      config = true },
    -- Bufferline, açık dosyaları görselleştirmek için
    { "akinsho/bufferline.nvim",      requires = "nvim-tree/nvim-web-devicons" },

    -- Nvim-web-devicons, dosya ve dil türü ikonları
    { "nvim-tree/nvim-web-devicons" },
    { "folke/noice.nvim",             requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" } },
    { "iamcco/markdown-preview.nvim", build = "cd app && npm install",                              ft = { "markdown" } },
    -- Markdown yazım desteği için
    { "plasticboy/vim-markdown" },
    { "godlygeek/tabular" }, -- Tablo oluşturma desteği
    -- Treesitter for better syntax highlighting and folding
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",                       -- Automatically update parsers
        event = { "BufReadPost", "BufNewFile" },   -- Load on file read
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects", -- Adds support for text objects
        },
    }
}
