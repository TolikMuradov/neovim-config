require("trouble").setup({
    -- Trouble'nin temel ayarları
    position = "bottom", -- Hata penceresini altta aç
    height = 10,         -- Pencerenin yüksekliği
    icons = true,        -- İkonları etkinleştir
    mode = "workspace_diagnostics", -- Varsayılan olarak tüm çalışma alanını göster
    fold_open = "", -- Katlanmış hatalar için simge
    fold_closed = "", -- Kapalı hatalar için simge
    action_keys = {     -- Hata yönetimi için keymap'ler
        close = "q", -- Trouble penceresini kapatmak için
        refresh = "r", -- Hataları yeniden yüklemek için
        jump = {"<cr>", "<tab>"}, -- Hatalara gitmek için
        toggle_mode = "m", -- Çalışma alanı veya belge hatalarını değiştirme
    },
    auto_open = false, -- Bir hata olduğunda otomatik olarak açılmasını devre dışı bırak
    auto_close = true, -- Tüm hatalar çözüldüğünde pencereyi kapat
    signs = {
        error = "",
        warning = "",
        hint = "",
        information = ""
    },
    use_diagnostic_signs = false -- LSP tarafından belirlenen işaretleri kullan
})
