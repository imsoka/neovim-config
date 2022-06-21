local cmp = require('cmp')
local snippets = require ('luasnip')

local has_words_before = function()
    local line, column = unpack(vim.api.nvim_win_get_cursor(0))

    return column ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(column, column):match("%s") == nil
end

cmp.setup({
    snippet = {
        expand = function(args)
            snippets.lsp_expand(args.body)
        end,
    },
        mapping = {
        ["<C-SPACE>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, { "i", "s" }),
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }
    }, {
        { name = 'buffer' },
        { name = 'path' , max_item_count = 15 },
    }),
})
