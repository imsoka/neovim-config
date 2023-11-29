require('mason-nvim-dap').setup {
    automatic_setup = true,
    handlers = {
        php = function (config)
           config.configurations = {
               {
                   name = 'PHP: Listen for XDebug',
                   type = 'php',
                   request = 'launch',
                   port = 9003,
                   log = true,
                   pathMappings = {
                       ["/var/www/html"] = vim.fn.getcwd() .. '/'
                   },
                   hostname = '0.0.0.0',
               }
           }

           require('mason-nvim-dap').default_setup(config)
        end
    },

    ensure_installed = {}
}
