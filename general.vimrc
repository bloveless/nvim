" Autoformat on save
let g:autofmt_autosave = 1

syntax on
colorscheme darcula
set autoindent

" Show relative line numbers with the current active line as the absolute line
" number
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Show hidden characters
set list
set listchars=space:.,tab:>-
highlight NonText ctermfg=0
set tabstop=4

" Airline
let g:airline_powerline_fonts = 1

" Use the system clipboard so you can copy in vim and Cmd+V paste in other
" programs
set clipboard=unnamed