local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()

    -- Packer 
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-fzf-native.nvim'},
            {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
        }
    }

    -- Dashboard
    use {
        'glepnir/dashboard-nvim',
        config = require('plugins.dashboard')
    }

    -- LSP Installer
    use {
        'williamboman/nvim-lsp-installer',
        requires = {
            'neovim/nvim-lspconfig'
        }
    }

    -- Gruvbox colorscheme
    use {
        'ellisonleao/gruvbox.nvim'
    }

    -- Lualine
    use {   
        'nvim-lualine/lualine.nvim',   
        requires = {
            {'kyazdani42/nvim-web-devicons'}
        },
        config = require('plugins.lualine')
    }

    use {
        'hrsh7th/nvim-cmp',
        config = require('plugins.nvim-cmp'),
        requires = {
            "l3mon4d3/LuaSnip",
            "hrsh7th/cmp-nvim-lsp",             
            "hrsh7th/cmp-buffer",             
            "hrsh7th/cmp-path",             
            "hrsh7th/cmp-nvim-lua",             
            "hrsh7th/cmp-cmdline",             
            "saadparwaiz1/cmp_luasnip",
        }
    }

    use {
        "akinsho/toggleterm.nvim",
        tag = 'v1.*',
        config = require("plugins.toggleterm")
    }

end)
