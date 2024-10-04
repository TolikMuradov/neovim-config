local actions = require('telescope.actions')

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,  -- ESC ile arama menüsünü kapat
      },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown", -- Dosya arama için dropdown stili
    },
    live_grep = {
      theme = "ivy"
    }
  },
  extensions = {},
}



