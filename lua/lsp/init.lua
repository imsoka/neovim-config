local lspconfig = require("lspconfig")
local lsp_installer = require("nvim-lsp-installer")
local SERVERS = require("lsp.utils.servers")
local cmp = require("cmp_nvim_lsp")

-- Initialize LSP installer plugin
require("nvim-lsp-installer").setup{}

local function get_capabilities()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = cmp.update_capabilities(capabilities)
    local completionItem = capabilites.textDocument.completion.completionItem

    completionItem.snipetSupport = true
    completionItem.resolveSupport = {
        properties = {
            "documentation",
            "detail",
            "additionalTextEdits",
        }
    }

    return capabilities
end

local function install_server_if_missing(server)
    if not server:is_installed() then
        print("Installing LSP: " .. server.name)

        server:install()
    end
end

for _, name in pairs(SERVERS) do
    local is_server_found, server lsp_installer.get_server(name)

    if is_server_found then
        install_server_if_missing(server)
    end
end
