require("toggleterm").setup({
    size = 20,
    open_mapping = [[<C-\>]], -- Ctrl + \ tuşlarıyla terminali aç/kapat
    hide_numbers = true,      -- Terminalde satır numaralarını gizle
    shade_filetypes = {},
    shade_terminals = true,   -- Terminal pencerelerini karart
    shading_factor = 2,       -- Karartma seviyesi (0-3)
    start_in_insert = true,   -- Terminal açıldığında otomatik insert moduna gir
    insert_mappings = true,   -- Terminalde iken normal moddan insert moda geçmek için
    terminal_mappings = true, -- Terminal modundayken ek komutlar
    direction = "float",      -- Terminalin açılış yönü ("horizontal", "vertical", "float")
    float_opts = {
        border = "curved",    -- Terminal kenarlıkları
        winblend = 3,
    },
})
