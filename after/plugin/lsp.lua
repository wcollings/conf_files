require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
vim.opt.foldmethod="expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = ""
