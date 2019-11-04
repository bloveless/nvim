" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Fuzzy file finder
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Rainbow brackets
Plug 'luochen1990/rainbow'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'blueshirts/darcula'

" Git Plugin
Plug 'tpope/vim-fugitive'

" Surround text with
Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()

