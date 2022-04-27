local options = { noremap = true, silent = true }
-- LSP --

-- Hover
vim.keymap.set('n', "K", vim.lsp.buf.hover(), options)
vim.keymap.set('n', "gD", vim.lsp.buf.declaration(), options)
vim.keymap.set('n', "gd", vim.lsp.buf.definition(), options)
vim.keymap.set('n', "gi", vim.lsp.buf.implementation(), options)
