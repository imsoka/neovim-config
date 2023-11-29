local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	ensure_installed = {
		"lua_ls",
		"intelephense",
		"gopls",
		"html"
	}
})

