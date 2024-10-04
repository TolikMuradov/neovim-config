require('lualine').setup {
  options = {
    theme = 'tokyonight',  -- Tokyonight temasını kullan
    section_separators = { left = '', right = '' }, -- Bölüm ayırıcıları
    component_separators = { left = '', right = '' }, -- Bileşen ayırıcıları
    icons_enabled = true, -- İkonları etkinleştir
  },
  sections = {
    lualine_a = {'mode'},  -- Hangi modda olduğunu göster (Normal, Insert, vb.)
    lualine_b = {'branch'},  -- Git branch bilgisini göster
    lualine_c = {'filename'}, -- Dosya adını göster
    lualine_x = {'encoding', 'fileformat', 'filetype'}, -- Dosya türü ve formatı
    lualine_y = {'progress'}, -- Dosyanın % kaçı görüntüleniyor
    lualine_z = {'location'}  -- Satır ve sütun bilgisi
  },
}
