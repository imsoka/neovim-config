-- This file contains every option I use for my neovim config.

-- Relative number lines
vim.opt.number = true
vim.opt.relativenumber = true

-- Tab behaviour
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

-- Search behaviour
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- Line / Column behaviour
vim.opt.colorcolumn = '80'
vim.opt.wrap = false
vim.opt.signcolumn = "auto:3"

-- Scroll behaviour
vim.opt.scrolloff = 10

--Auto complete behaviour
vim.opt.completeopt = "menu,menuone,noselect,noinsert"

--Font
vim.opt.guifont = "Sauce Code Pro NF:16"

-- Other
vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.errorbells = false
vim.opt.background = "dark"
