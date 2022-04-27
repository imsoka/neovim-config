local lsp_installer = require("nvim-lsp-installer")
local SERVERS = require("lsp.servers")

lsp_installer.on_server_ready(function(server)
    local options = {}

    server:setup(options)
end)
