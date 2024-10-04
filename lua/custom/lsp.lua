require("mason").setup()
require("mason-lspconfig").setup()

-- LSP sunucusu ayarları
local lspconfig = require('lspconfig')

-- Python için pyright
lspconfig.pyright.setup{}

-- JavaScript/TypeScript için tsserver
-- JavaScript/TypeScript için ts_ls
lspconfig.ts_ls.setup{}

-- Lua için özel bir ayar
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }, -- Lua kodları için vim'i tanı
      },
    },
  },
}
