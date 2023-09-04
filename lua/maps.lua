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
