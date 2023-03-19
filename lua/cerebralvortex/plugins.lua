-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'Mofiqul/dracula.nvim'
  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
      }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'mfussenegger/nvim-jdtls'
  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'
  use {
	"windwp/nvim-autopairs",
	config = function() require("nvim-autopairs").setup {} end
      }
  use({
	  "Pocco81/auto-save.nvim",
	  config = function()
		  require("auto-save").setup {
		  }
	  end

  })
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  		require("toggleterm").setup()
	end
  }
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }
  use {
	  "hrsh7th/nvim-cmp",
	    requires = {
		"hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
		'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
		'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
		'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
	}
     }
  use {
	    'tzachar/cmp-tabnine',
	run = './install.sh',
	requires = 'hrsh7th/nvim-cmp'
  }
end)
