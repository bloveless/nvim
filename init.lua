-- Map leader to space
vim.g.mapleader = ' '

require('plugins')
require('user.cmp')
require('user.lspconfig')
require('user.go')
require('user.telescope')

if vim.fn.has("termguicolors") == 1 then
  vim.opt.termguicolors = true
end

vim.opt.syntax = "enable"
vim.cmd "colorscheme gruvbox"

-- Hybrid line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable powerline fonts for airline
vim.g.airline_powerline_fonts = 1

-- Default spaces instead of tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Show whitespace characters
vim.opt.list = true
vim.opt.listchars = {tab = '>-', space = '.', trail = '~', extends = '>'}

-- Automatically trim trailing whitespace on save
-- if there are any issues with this (I.E. files that need trailing whitespace)
-- consider this link https://vim.fandom.com/wiki/Remove_unwanted_spaces for
-- solutions
vim.cmd [[autocmd BufWritePre * :%s/\s\+$//e]]

-- Open new splits on the right and below the current buffer by default
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Set search to use case sensitive queries only if the user provides cases
vim.opt.ignorecase = true
vim.opt.smartcase = true

