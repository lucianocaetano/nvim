package.path = package.path .. ";/home/mauro/.config/nvim/src/core/?.lua"

require('options')
require('plugins')
require('keymaps')
require('lsp')
require('autocmd')
require('theme')
