local saga = require('lspsaga')

saga.setup({
    -- Varsayılan ayarları kullanarak sade bir yapılandırma
    symbol_in_winbar = {
        enable = true,
    },
    ui = {
        border = 'rounded',
    },
    -- Tanımlar ve hatalar için simgeler
    diagnostic_header = { " ", " ", " ", "ﴞ " },
    code_action_icon = "💡",
})
