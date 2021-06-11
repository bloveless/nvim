" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats'
Plug 'tpope/vim-obsession'

" Fuzzy search (you must manually install ripgrep aswell)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'fatih/vim-go'

" Initialize plugin system
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme gruvbox

" Hybrid line numbers
set number relativenumber

" Always show the tab bar
set showtabline=2

" Enable powerline fonts for airline
let g:airline_powerline_fonts = 1

" Default spaces instead of tabs
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Disable old regex engine which may cause performance issues for yats
set re=0

" Show whitespace characters
set list
set listchars=tab:>-,space:.,trail:~,extends:>,precedes:< "eol:$

" Show fuzzy finder on ctrl-p
nmap <C-P> :Rg<CR>

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

source ~/.config/nvim/coc.vim
