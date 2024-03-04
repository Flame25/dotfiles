
packer = require 'packer'
local use = packer.use
packer.reset()
packer.startup(function(use)
  use 'nvim-pack/nvim-spectre'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  }

  -- You can specify multiple plugins in a single call
  use 'wbthomason/packer.nvim'
  use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}
  use {
  'gelguy/wilder.nvim',
  config = function()
    -- config goes here
  end,
  }
  use 'm4xshen/autoclose.nvim'
  use 'neovim/nvim-lspconfig'
  use 'andweeb/presence.nvim'
  use 'lambdalisue/nerdfont.vim'
  use 'jghauser/mkdir.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
    
  use "rebelot/kanagawa.nvim"
  use 'frabjous/knap'
  use 'lervag/vimtex'
  use 'projekt0n/github-nvim-theme'
  use 'lambdalisue/suda.vim'

  use 'nvim-tree/nvim-tree.lua'
  
  use 'rcarriga/nvim-notify'
  
  use 'mfussenegger/nvim-jdtls'
  use {
  'VonHeikemen/fine-cmdline.nvim',
  requires = {
    {'MunifTanjim/nui.nvim'}
  }
}
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    
  }

  use({
    'neoclide/coc.nvim', 
     branch= 'release', 
  
  }) 

  use({
    'glepnir/galaxyline.nvim',
     branch = 'main', 
     requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  })

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Lua
use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 250
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
end)
