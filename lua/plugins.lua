vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- packer
	use 'wbthomason/packer.nvim'

	-- fuzzy finder 
	use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}
	use 'nvim-tree/nvim-web-devicons'

	-- color scheme 
	use 'folke/tokyonight.nvim'
	use {
 			'nvim-lualine/lualine.nvim',
  		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
end)
