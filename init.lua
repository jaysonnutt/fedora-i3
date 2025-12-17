vim.g.mapleader=" "

-- LazyVIM Stuff
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
local plugins = {
  { "catppuccin/nvim", name="catppuccin", pirority=1000 },
  {
    'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
     dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
}

require("lazy").setup(plugins, opts)
require("catppuccin").setup()

--- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.cmd([[

  " Markdown Preview Bindings
  let g:mkdp_auto_start=1
  let g:mkdp_auto_close=1

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
  
  colorscheme catppuccin
]])
