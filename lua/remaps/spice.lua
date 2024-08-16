--au BufRead,BufNewFile *.lib set filetype=spice
vim.api.nvim_create_autocmd({"BufRead","BufNewFile"}, {
	pattern={"*.lib", "*.inc"},
	command= "set filetype=spice",
})
vim.api.nvim_create_autocmd({"BufRead","BufNewFile"}, {
	pattern={"*.lib", "*.inc", "*.sp"},
	callback=function()
		vim.api.nvim_buf_set_option(0,"commentstring","* %s")
	end
})
