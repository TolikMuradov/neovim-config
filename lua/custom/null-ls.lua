local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        -- Prettier ile formatlama
        null_ls.builtins.formatting.prettier,

        -- ESLint ile linting
        null_ls.builtins.diagnostics.eslint_d,

        -- Python için Black formatlayıcı
        null_ls.builtins.formatting.black,

        -- Shell script için ShellCheck linting
        null_ls.builtins.diagnostics.shellcheck,

        -- Markdown formatlama
        null_ls.builtins.formatting.markdownlint,

        -- Eklemek istediğin başka formatlayıcılar ve linting araçları
    },
    -- Otomatik olarak dosyayı kaydederken formatlama yapmak
    on_attach = function(client, bufnr)
        if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_buf_create_user_command(bufnr, "Format", function()
                vim.lsp.buf.format({ async = true })
            end, { desc = "Format the current buffer with null-ls" })
        end
    end,
})

vim.cmd([[
  augroup FormatOnSave
    autocmd!
    autocmd BufWritePre * lua vim.lsp.buf.format({ async = true })
  augroup END
]])

vim.api.nvim_create_user_command("Format", function()
    vim.lsp.buf.format({ async = true })
end, { desc = "Format the current buffer with null-ls" })
