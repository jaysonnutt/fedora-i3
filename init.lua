vim.cmd([[

  " Vim Plugs
  call plug#begin(stdpath('data') . '/plugged')
  
    Plug 'preservim/nerdtree'
  
  call plug#end()

  " Vim Plug Mappings
  nnoremap <leader>t :NERDTreeToggle<CR>  " Map NerdTree

  " Standard things
  set number
  set relativenumber
  set title
  set hidden
  set encoding=utf-8
  set incsearch ignorecase smartcase hlsearch
  set backspace=indent,eol,start
  set path+=**
  set wildmenu
  set mouse=a
  set autoindent
  set linebreak
  set noerrorbells
  set history=1000
  
  syntax enable
  let mapleader=","
  
  inoremap jj <ESC>
  nnoremap B ^
  nnoremap E $
  nnoremap $ <NOP>
  nnoremap ^ <NOP>
  nnoremap ; :Files<CR>
  
  inoremap <c-h> <c-w>h
  inoremap <c-l> <c-w>l
  inoremap <c-j> <c-w>j
  inoremap <c-k> <c-w>k
  
  nnoremap <c-h> <c-w>h
  nnoremap <c-l> <c-w>l
  nnoremap <c-j> <c-w>j
  nnoremap <c-k> <c-w>k
  
  colorscheme habamax
]])
