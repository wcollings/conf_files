vim.g.python_recommended_style=0
vim.api.nvim_create_autocmd("FileType", {
	pattern="python",
	command="set fdm=indent"
})
vim.api.nvim_create_autocmd("FileType", {
    pattern='python',
    callback=function()
        vim.keymap.set('n','co','I# <esc>',{noremap=true})
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern='python',
    callback=function()
        vim.keymap.set('n','cu',':s/^\\(\\s*\\)# \\?/\\1/<cr>:noh<Enter>',{noremap=true})
    end
})
