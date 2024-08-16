vim.api.nvim_create_autocmd({"BufRead","BufNewFile"}, {
	pattern={"*.toml"},
	callback=function()
		vim.api.nvim_buf_set_option(0,"commentstring","# %s")
	end
})
