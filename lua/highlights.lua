vim.opt.cursorline = true
vim.opt.termguicolors= true
vim.opt.winblend = 0

-- to show completion on popup
vim.opt.wildoptions = 'pum' 
vim.opt.pumblend = 5 
vim.opt.background = 'dark' 

-- colorscheme
vim.cmd[[colorscheme tokyonight-night]]
require("lualine").setup()
