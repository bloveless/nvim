-- Map leader to space
vim.g.mapleader = ' '

require('plugins')
require('brennon.globals')
require('brennon.cmp')
require('brennon.mason')
require('brennon.lspconfig')
require('brennon.go')
require('brennon.telescope')
require('brennon.lualine')

if vim.fn.has("termguicolors") == 1 then
  vim.opt.termguicolors = true
end

vim.opt.syntax = "enable"
vim.cmd "colorscheme gruvbox"

-- Hybrid line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

-- Show diagnostic and git changes in the number gutter instead of its own custom gutter
vim.opt.signcolumn = "number"

-- Enable powerline fonts for airline
vim.g.airline_powerline_fonts = 1

-- Default spaces instead of tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Show whitespace characters
vim.opt.list = true
vim.opt.listchars = {tab = '>-', lead = '.', trail = '~', precedes = '<', extends = '>'}

-- Automatically trim trailing whitespace on save
-- if there are any issues with this (I.E. files that need trailing whitespace)
-- consider this link https://vim.fandom.com/wiki/Remove_unwanted_spaces for
-- solutions
vim.cmd [[autocmd BufWritePre * :%s/\s\+$//e]]

vim.keymap.set('n', '<leader>pv', '<cmd>Explore<cr>')

-- Open new splits on the right and below the current buffer by default
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Set search to use case sensitive queries only if the user provides cases
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.keymap.set('n', '<leader><leader>x', SaveAndExec)

