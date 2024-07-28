print('maps')
local keymap = vim.keymap

-- Do not yank with delete commad
keymap.set('n', 'x', '"_x')
keymap.set('v', 'x', '"_x')
keymap.set('n', 'dd', '"_dd')
keymap.set('n', 'dw', '"_dw')

--Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- go to def
keymap.set('n', 'gd', "<C-]>")
keymap.set('n', '<leader>gd', "gd")

-- diagnostics
keymap.set('n', '<leader>e', vim.diagnostic.open_float)
keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- python
vim.g.vimspector_enable_mappings = 'HUMAN'
vim.g.python3_host_prog = '/Users/ksk/.pyenv/shims/python3'
-- 保存時にフォーマットを実行
vim.cmd([[autocmd BufWritePre *.py lua vim.lsp.buf.format()]])
