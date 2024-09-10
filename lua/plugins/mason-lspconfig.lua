return {
  {
    "williamboman/mason-lspconfig.nvim",
    priority = 998,
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    config = function ()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "intelephense"
        }
      })
    end,
  }
}
