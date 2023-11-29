-- Basic config
vim.opt.hidden = true

--Numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Columns
vim.opt.signcolumn = "auto:1-3"
vim.opt.colorcolumn = "80"

-- Default tab behavior
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Disable swap file, enable Undo file
vim.opt.swapfile = false
vim.opt.undofile = true

-- Never wrap lines
vim.opt.wrap = false

-- Gruvbox colorscheme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Update LSP while on insert mode
vim.diagnostic.config({
    update_in_insert = true
})
