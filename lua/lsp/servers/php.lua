local lsp = require("lspconfig")
local capabilities = require("lsp.utils.capabilities")

lsp.intelephense.setup({
    capabilities = capabilities,
    on_attach = function(client)
    end
})
