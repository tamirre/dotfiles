-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- use 'feline-nvim/feline.nvim'
  use 'famiu/feline.nvim'

  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.8',
   -- or                            , branch = '0.1.x',
   requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- use {'srcery-colors/srcery-vim', as = 'srcery'}
  use {'ellisonleao/gruvbox.nvim', as = 'gruvbox' }

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }
  use {'mbbill/undotree'}
  use {'theprimeagen/harpoon'}

  use {'tpope/vim-fugitive'}
  
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use {
      "supermaven-inc/supermaven-nvim",
      config = function()
          require("supermaven-nvim").setup({})
      end,
  }
end)
