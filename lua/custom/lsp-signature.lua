require("lsp_signature").setup({
  bind = true,
  floating_window = true, -- İmza bilgisini kayan pencerede göster
  hint_enable = true, -- Parametre ipuçlarını etkinleştir
  hint_prefix = " ", -- İpuçlarının başına ikon ekle
  handler_opts = {
    border = "rounded", -- Kayan pencere kenarlıkları yuvarlatılmış
  },
})
