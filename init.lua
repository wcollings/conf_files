-- Header stuff
vim.cmd([[
syntax on
set number relativenumber
set tabstop=3
set shiftwidth=3
set autoindent
set tags=./tags,tags;$HOME
set nocompatible
filetype plugin on
set timeoutlen=150
set ttimeoutlen=1
set mouse=
]])

vim.cmd([[
call plug#begin('~/.local/share/nvim/site/autoload')
Plug 'git@github.com:terrortylor/nvim-comment.git'
Plug 'vim-scripts/taglist.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'cespare/vim-toml', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ray-x/aurora' 
Plug 'folke/tokyonight.nvim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-surround'
Plug 'wellle/context.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neovim/nvim-lspconfig'
call plug#end()
]])
vim.cmd("colorscheme tokyonight")
vim.g.aurora_transparent=1
vim.g.wildmode="longest,list,full"
vim.g.wildmenu=true

vim.api.nvim_create_autocmd("TextYankPost", {
	callback=function() vim.highlight.on_yank() end,
})
vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern='*',
  command= 'silent! normal! g`"zv',
})
require("remaps")
