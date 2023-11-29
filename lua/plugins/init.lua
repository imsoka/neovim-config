local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	-- Packer itself
	use 'wbthomason/packer.nvim'

	-- LSP plugins configuration
	use {
		"williamboman/mason.nvim",
		requires = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig"
		},
		run = ":MasonUpdate",
	}

    -- DAP
    use {
        "jay-babu/mason-nvim-dap.nvim",
        requires = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",
            "folke/neodev.nvim",
            "rcarriga/nvim-dap-ui"
        }
    }

    --Gruvbox colorscheme
    use {
        "ellisonleao/gruvbox.nvim",
    }

    --Telescope
    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-treesitter/nvim-treesitter",
                run = ":TSUpdate"
            },
            "nvim-tree/nvim-web-devicons"
        }
    }

    --nvim-cmp
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
        }
    }

    --LuaSnip
    use {
        "hrsh7th/vim-vsnip",
        requires = {
            "hrsh7th/cmp-vsnip"
        }
    }

	if packer_bootstrap then
		require('packer').sync()
	end
end)
