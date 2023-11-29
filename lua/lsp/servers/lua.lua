local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = {
                    "vim",
                }
            }
        }
    },
    capabilities = capabilities
}
