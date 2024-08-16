-- incoming_calls
vim.api.nvim_set_keymap("n","<leader>li","<cmd>lua vim.lsp.buf.incoming_calls()<cr>",{ noremap=true})
-- rename symbol
vim.api.nvim_set_keymap("n","<leader>lr","<cmd>lua vim.lsp.buf.rename()<cr>",{ noremap=true})
--show documentation
vim.api.nvim_set_keymap("n","<leader>d","<cmd>lua vim.lsp.buf.hover()<cr>",{ noremap=true})
-- goto header
vim.api.nvim_set_keymap("n","<leader>h","<cmd>lua vim.lsp.buf.declaration()<cr>",{ noremap=true})
-- goto definition
vim.api.nvim_set_keymap("n","<leader>i","<cmd>lua vim.lsp.buf.definition()<cr>",{ noremap=true})
-- accept suggestion
vim.api.nvim_set_keymap("i","<C-j>","<C-x><C-o>",{ noremap=true})
