print('maps')
local keymap = vim.keymap

-- Do not yank with delete commad
keymap.set('n', 'x', '"_x')
keymap.set('n', 'dd', '"_dd')
keymap.set('n', 'dw', '"_dw')

-- telescope setting
local fb_actions = require "telescope._extensions.file_browser.actions"

--Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
