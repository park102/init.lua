-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- aaaass
-- Only required if you have packer configured as `opt`
return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  use({
  "epwalsh/obsidian.nvim",
  tag = "*",  -- recommended, use latest release instead of latest commit
  requires = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  }
  })
  
  use('nvim-tree/nvim-tree.lua')
  use({'norcalli/nvim-colorizer.lua',
  config = function()
      require'colorizer'.setup()
  end
  })
  use('nvim-tree/nvim-web-devicons')
  --use('feline-nvim/feline.nvim')
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.3',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
  use({
  'folke/noice.nvim',
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
    }
})
  use({"folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("todo-comments").setup({

    })
end
})
  use('folke/trouble.nvim')
  use('nvim-lua/plenary.nvim')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('ThePrimeagen/vim-be-good')
  use('MunifTanjim/nui.nvim')
  use({
      'rcarriga/nvim-notify',
  config = function()
      require("notify").setup({
      background_colour = "#000000",
      enabled = false,
  })
  end
})
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        vim.cmd('colorscheme rose-pine')
    end
})
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
  use {
  'lewis6991/gitsigns.nvim',
  -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
}
  use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
  }
  end
}

  use("tpope/vim-fugitive")
  use("christoomey/vim-tmux-navigator")
  use('nvim-treesitter/nvim-treesitter-context')
end)
