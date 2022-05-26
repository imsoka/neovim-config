local cmp = require('cmp')
local snippets = require ('luasnip')

cmp.setup({
    snippet = {
        expand = function(args)
            snippets.lsp_expand(args.body)
        end,
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }
    }, {
        { name = 'buffer' },
        { name = 'path' , max_item_count = 15 },
    }),
})
