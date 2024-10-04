require("neo-tree").setup({
    filesystem = {
        follow_current_file = true,
        hijack_netrw_behavior = "open_current",
        use_libuv_file_watcher = true,
        window = {
            position = "left", -- Dosya ağacını sol tarafa konumlandırıyoruz
            width = 30,
            mappings = {
                ["<CR>"] = "open",
                ["a"] = "add",
                ["r"] = "rename",
                ["d"] = "delete",
                ["R"] = "refresh",
            },
        },
    },
    buffers = {
        follow_current_file = true, -- Mevcut dosyaya otomatik odaklan
    },
    git_status = {
        window = {
            position = "float",
        },
    },
    ilesystem = {
        filtered_items = {
            visible = true,
        },
    },
    default_component_configs = {
        indent = {
            padding = 1,
        },
    },
})

-- Neo-tree'nin tüm arkaplanlarını şeffaf hale getirmek için
