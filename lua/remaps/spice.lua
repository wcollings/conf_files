--au BufRead,BufNewFile *.lib set filetype=spice
vim.api.nvim_create_autocmd({"BufRead","BufNewFile"}, {
	pattern={"*.lib", "*.inc"},
	command= "set filetype=spice",
})
