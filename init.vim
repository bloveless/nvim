syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey

if exists('g:vscode')
  call plug#begin('~/.vim/plugged-vscode')
  
  Plug 'tpope/vim-surround'
  Plug 'asvetliakov/vim-easymotion'
  
  call plug#end()

  xmap gc  <Plug>VSCodeCommentary
  nmap gc  <Plug>VSCodeCommentary
  omap gc  <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine

  nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
  xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
  nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
  xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
  nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
  xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
  nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
  xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
else
  call plug#begin('~/.vim/plugged')
  
  Plug 'morhetz/gruvbox'
  Plug 'jremmen/vim-ripgrep'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'leafgarland/typescript-vim'
  Plug 'vim-utils/vim-man'
  Plug 'git@github.com:kien/ctrlp.vim.git'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'mbbill/undotree'
  Plug 'git@github.com:sheerun/vim-polyglot' " syntax highlighting for everything
  Plug 'editorconfig/editorconfig-vim'
  Plug 'asvetliakov/vim-easymotion'
  
  call plug#end()

  colorscheme gruvbox
  set background=dark
  
  if executable('rg')
      let g:rg_derive_root='true'
      let g:ctrlp_user_command = 'rg %s --files -g "!.git/*" --hidden --color=never --glob ""'
  endif
  
  " Use tab for trigger completion with characters ahead and navigate.
  " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
  " other plugin before putting this into your config.
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
  
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction
  
  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()
  
  " let g:ctrlp_user_commnd = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
  " let mapleader = " "
  let g:netrw_browse_split = 2
  let g:netrw_banner = 0
  let g:netrw_winsize = 25
  
  nnoremap <leader>h :wincmd h<CR>
  nnoremap <leader>j :wincmd j<CR>
  nnoremap <leader>k :wincmd k<CR>
  nnoremap <leader>l :wincmd l<CR>
  nnoremap <leader>u :UndotreeShow<CR>
  nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
  nnoremap <leader>ps :Rg<SPACE>
  nnoremap <silent> <Leader>+ :vertical resize +5<CR>
  nnoremap <silent> <Leader>- :vertical resize -5<CR>
  
  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()
  
  nmap <buffer> <leader>gd <Plug>(coc-definition)
  nmap <buffer> <leader>gy <Plug>(coc-type-definition)
  nmap <buffer> <leader>gi <Plug>(coc-implementation)
  nmap <buffer> <leader>gr <Plug>(coc-references)
  nnoremap <buffer> <leader>cr :CocRestart
  nnoremap <silent> <C-l> :nohl<CR><C-l>
endif

