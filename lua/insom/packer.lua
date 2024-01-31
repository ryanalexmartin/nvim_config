-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use "wbthomason/packer.nvim"
    --  use "folke/tokyonight.nvim"
    -- use "rafamadriz/neon"
    use {
        "ibhagwan/fzf-lua",
        requires = { "kyazdani42/nvim-web-devicons" },
    }
    use {
        "kyazdani42/nvim-tree.lua",   
        requires = { "kyazdani42/nvim-web-devicons" },
    } 
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'feline-nvim/feline.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use 'xiyaowong/transparent.nvim'

    use 'numToStr/Comment.nvim'

    -- LSP setup --
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- Telescope --
    use "nvim-lua/plenary.nvim"
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Glance (for LSP references) --
    use({
        "dnlhc/glance.nvim",
        config = function()
            require('glance').setup({
                -- your configuration
            })
        end,
    })

    -- other nice stuff--
    use("tpope/vim-fugitive")
    use 'mbbill/undotree'
    use 'ThePrimeagen/harpoon'
    use 'github/copilot.vim'

    use 'https://github.com/airblade/vim-gitgutter.git'
end
)
