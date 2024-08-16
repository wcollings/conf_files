require('nvim_comment').setup({
	create_mappings = true,
	comment_empty_trim_whitespace=true,
	line_mapping="<leader>cc",
	operator_mapping = "<leader>c"
})
vim.keymap.set("n","cp","yyp<leader>cck",{remap=true})
vim.keymap.set("n","cd","<leader>ccj<leader>cc",{remap=true})

