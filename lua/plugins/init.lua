return {


    {"epwalsh/obsidian.nvim",
    version="*",
    dependencies = {
        "nvim-lua/plenary.nvim",
    }
    },

    {"j-hui/fidget.nvim"},
    {"nvim-tree/nvim-tree.lua"},
    --[[
    {"norcalli/nvim-colorizer.lua",
    config = function()
        require('colorizer').setup()
    end
    },
    --]]
    {"nvim-tree/nvim-web-devicons"},
    {'nvim-telescope/telescope.nvim', version = '0.1.3'},
    {'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
    },
    {'folke/noice.nvim',
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
    }
    },
    {"folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("todo-comments").setup()
        end},
    {'folke/trouble.nvim'},
    {'nvim-lua/plenary.nvim'},
    {'theprimeagen/harpoon'},
    {'mbbill/undotree'},
    {'ThePrimeagen/vim-be-good'},
    {'MunifTanjim/nui.nvim'},
    {
        'rcarriga/nvim-notify',
        config = function()
        require("notify").setup({
        background_colour = "#000000",
        enabled = false,
    })
    end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    {"catppuccin/nvim", name = "catppuccin", priority = 1000},
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
    {
  'lewis6991/gitsigns.nvim',
  -- version = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    },
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
            }
        end
    },
    {"tpope/vim-fugitive"},
    {"christoomey/vim-tmux-navigator"},
    {'nvim-treesitter/nvim-treesitter-context'},
    {
	"chrisgrieser/nvim-scissors",
	dependencies = "nvim-telescope/telescope.nvim", -- optional
	opts = {
		snippetDir = vim.fn.stdpath("config") .. "/snippets",
	    }
    },

}
