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

  require("packer").startup(function()
	  use({
		  "stevearc/resession.nvim",
		  config = function()
			  require("resession").setup()
		  end,
	  })
  end)

  use {
      "supermaven-inc/supermaven-nvim",
      config = function()
          require("supermaven-nvim").setup({})
      end,
  }

  -- -- Minuet AI
  -- use {
  --     'milanglacier/minuet-ai.nvim',
  --     config = function()
  --         require('minuet').setup {
  --             provider = 'openai_fim_compatible',
  --             n_completions = 1, -- recommend for local model for resource saving
  --             -- I recommend beginning with a small context window size and incrementally
  --             -- expanding it, depending on your local computing power. A context window
  --             -- of 512, serves as an good starting point to estimate your computing
  --             -- power. Once you have a reliable estimate of your local computing power,
  --             -- you should adjust the context window to a larger value.
  --             context_window = 256,
  --             provider_options = {
  --                 openai_fim_compatible = {
  --                     -- For Windows users, TERM may not be present in environment variables.
  --                     -- Consider using APPDATA instead.
  --                     api_key = 'TERM',
  --                     name = 'Ollama',
  --                     end_point = 'http://localhost:11434/v1/completions',
  --                     model = 'qwen2.5-coder:1.5b',
  --                     optional = {
  --                         stream = true,
  --                         max_tokens = 56,
  --                         top_p = 0.9,
  --                     },
  --                 },
  --             },
  --             virtualtext = {
  --                 auto_trigger_ft = {'lua', 'tcl', 'fortran'},
  --                 keymap = {
  --                     -- accept whole completion
  --                     accept = '<A-a>',
  --                     -- accept one line
  --                     accept_line = '<A-A>',
  --                     -- accept n lines (prompts for number)
  --                     -- e.g. "A-z 2 CR" will accept 2 lines
  --                     accept_n_lines = '<A-z>',
  --                     -- Cycle to prev completion item, or manually invoke completion
  --                     prev = '<A-[>',
  --                     -- Cycle to next completion item, or manually invoke completion
  --                     next = '<A-]>',
  --                     dismiss = '<A-e>',
  --                 },
  --             },
  --         }
  --     end
  -- }
  -- -- Plenary (dependency)
  -- use 'nvim-lua/plenary.nvim'
end)
