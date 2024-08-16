vim.api.nvim_create_autocmd("FileType",{
	pattern="text",
	callback=function()

	end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern='text',
    callback=function()
        vim.keymap.set('n','j','gj',{noremap=true})
    end
})
