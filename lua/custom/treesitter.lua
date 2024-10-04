require("nvim-treesitter.configs").setup({
    ensure_installed = { -- List of languages to automatically install parsers for
        "lua",
        "python",
        "javascript",
        "html",
        "css",
        "bash",
        "json",
        "markdown", -- Add more languages as needed
    },
    highlight = {
        enable = true, -- Enables syntax highlighting
    },
    indent = {
        enable = true,      -- Enables smart indentation
    },
    incremental_selection = { -- Enables incremental text selection
        enable = true,
        keymaps = {
            init_selection = "gnn", -- Start selecting
            node_incremental = "grn", -- Increment node
            scope_incremental = "grc", -- Increment scope
            node_decremental = "grm", -- Decrement node
        },
    },
    textobjects = { -- Enables text objects based on syntax
        select = {
            enable = true,
            lookahead = true,       -- Automatically jump forward to text objects
            keymaps = {
                ["af"] = "@function.outer", -- Select around function
                ["if"] = "@function.inner", -- Select inside function
                ["ac"] = "@class.outer", -- Select around class
                ["ic"] = "@class.inner", -- Select inside class
            },
        },
    },
    autotag = {
        enable = true, -- Enables automatic closing of HTML tags
    },
})
