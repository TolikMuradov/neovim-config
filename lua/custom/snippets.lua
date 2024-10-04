local ls = require("luasnip")

-- Snippetler oluşturmak için şablon oluştur
ls.config.set_config({
    history = true,                            -- Snippet geçmişini kaydeder
    updateevents = "TextChanged,TextChangedI", -- Canlı güncellemeler
})

-- Snippetler arasında gezinmek için keymap ayarları
vim.api.nvim_set_keymap("i", "<C-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", { silent = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { silent = true })

-- Mevcut snippet'leri yüklemek için
require("luasnip.loaders.from_vscode").lazy_load()


local ls = require("luasnip")
ls.snippets = {
    markdown = {
        ls.parser.parse_snippet("h1", "# ${1:Başlık}"),
        ls.parser.parse_snippet("h2", "## ${1:Başlık}"),
        ls.parser.parse_snippet("link", "[${1:metin}](http://${2:url})"),
    },
}
