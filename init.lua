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

vim.g.coc_disable_startup_warning=1
vim.cmd([[
call plug#begin('~/.local/share/nvim/site/autoload')
Plug 'git@github.com:terrortylor/nvim-comment.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-scripts/taglist.vim'
Plug 'cespare/vim-toml', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ray-x/aurora' 
call plug#end()
]])
vim.cmd("colorscheme aurora")
vim.g.aurora_transparent=1
vim.api.nvim_set_keymap("i","<Tab><Space>","<Tab>",{ noremap=true})
vim.api.nvim_set_keymap("i","<Tab>","<Esc>",{ noremap=true})
vim.api.nvim_set_keymap("n","`]",":horiz winc ] <cr>",{ noremap=true})
vim.api.nvim_set_keymap("n","`]",":horiz winc ] <cr>",{ noremap=true})
vim.api.nvim_set_keymap("n","`[",":wq<cr>",{ noremap=true})
vim.api.nvim_set_keymap("n","gh",":horiz wincmd f<cr>",{ noremap=true})
vim.api.nvim_set_keymap("n","<S-h>",":bN<cr>",{ noremap=true})
vim.api.nvim_set_keymap("n","<S-l>",":bn<cr>",{ noremap=true})
vim.api.nvim_set_keymap("n","<Space>","za",{ noremap=true})

require("remaps")
