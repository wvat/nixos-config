local data_dir = vim.fn.has('nvim') == 1 and vim.fn.stdpath('data') .. '/site' or '~/.vim'

vim.g.mapleader = ","

require('options')
require('treesitter')
require('telescope_config')
require('autocmd')
require('keymaps')
require('lsp')
