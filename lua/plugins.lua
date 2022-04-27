return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-fzf-native.nvim'},
            {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
        }
    }

    use {
        'glepnir/dashboard-nvim',
        config = require('plugins.dashboard')
    }

    use {
        'williamboman/nvim-lsp-installer',
        requires = {
            'neovim/nvim-lspconfig'
        }
    }

    use {
        'ellisonleao/gruvbox.nvim'
    }

    use {   
        'nvim-lualine/lualine.nvim',   
        requires = {
            {'kyazdani42/nvim-web-devicons'}
        },
        config = require('plugins.lualine')
    }
end)
