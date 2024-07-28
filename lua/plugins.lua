vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- packer
	use 'wbthomason/packer.nvim'

	-- fuzzy finder 
	use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'nvim-tree/nvim-web-devicons'
	-- color scheme 
	use 'folke/tokyonight.nvim'
	use {
 			'nvim-lualine/lualine.nvim',
  		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- lsp
	-- refer to the following
	-- https://zenn.dev/fukakusa_kadoma/articles/99e8f3ab855a56
	use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
	}
	use 'hrsh7th/nvim-cmp' --補完エンジン本体
  use 'hrsh7th/cmp-nvim-lsp' --LSPを補完ソースに
  use 'hrsh7th/cmp-buffer' --bufferを補完ソースに
  use 'hrsh7th/cmp-path' --pathを補完ソースに
  use 'hrsh7th/vim-vsnip' --スニペットエンジン
  use 'hrsh7th/cmp-vsnip' --スニペットを補完ソースに
  use 'onsails/lspkind.nvim' --補完欄にアイコンを表示
  use "hrsh7th/cmp-cmdline"
	use {"nvimtools/none-ls.nvim",
				requires = {
      		"nvimtools/none-ls-extras.nvim",
				}
			}
	-- highlighting 
	use {
 		'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

	-- debbug 
	use 'puremourning/vimspector'

	-- vim-go
	use { "fatih/vim-go", opt = true, ft = { "go" } }
	vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  	pattern = "*.go",
  	command = "GoFmt",
  })

	-- dap
	use 'mfussenegger/nvim-dap'
	use 'leoluz/nvim-dap-go'
	use 'rcarriga/nvim-dap-ui'        -- デバッガUIを提供
	use 'theHamsta/nvim-dap-virtual-text' -- インラインアノテーション表示
	use { "nvim-neotest/nvim-nio" }
end)
