vim.api.nvim_create_autocmd("FileType",{
	pattern="tex",
	callback=function()
		vim.g.mapleader=';'
	end
})
--au FileType tex inore ;<Space> <Esc>/<++><Enter>"_4dli
vim.api.nvim_create_autocmd("FileType",{
	pattern="tex",
	callback=function()
		vim.keymap.set('i','<leader><Space','<Esc>/<++><Enter>"_4dli',{noremap=true})
	end
})
--au FileType tex inore ;$ $$<Enter><Enter>$$<Enter><++><Esc>kki
vim.api.nvim_create_autocmd("FileType", {
	pattern="tex",
	callback=function()
		vim.keymap.set('i','<leader>$','$$<cr><cr>$$<cr><++><Esc>kki',{noremap=true})
	end
})
--au FileType tex inore ;a \begin{array}{}<Enter>\end{array}<Enter><++><Esc>2k$i
vim.api.nvim_create_autocmd("FileType",{
	pattern="tex",
	callback=function()
		vim.keymap.set('i','<leader>a','\\begin{array}{}<Enter>\\end{array}<Enter><++><Esc>2k$i',
		{noremap=true})
	end
})

--au FileType tex inore ;m \big[<Enter>\begin{smallmatrix}<Enter><Enter>\end{smallmatrix}<Enter>\big]<++><Esc>2ki<Tab>
vim.api.nvim_create_autocmd("FileType", {
    pattern='tex',
    callback=function()
        vim.keymap.set('i','<leader>m','\\big[<Enter>\\begin{smallmatrix}<Enter><Enter>\\end{smallmatrix}<Enter>\\big]<++><Esc>2ki<Tab>',{noremap=true})
    end
})

--au FileType tex inore ;r \mathbb{R}
vim.api.nvim_create_autocmd("FileType", {
    pattern='tex',
    callback=function()
        vim.keymap.set('i','<leader>z','\\mathbb{Z}',{noremap=true})
    end
})

--au FileType tex inore ;z \mathbb{Z}
vim.api.nvim_create_autocmd("FileType", {
    pattern='tex',
    callback=function()
        vim.keymap.set('i','<leader>r','\\mathbb{R}',{noremap=true})
    end
})

--au FileType tex inore ;i \begin{itemize}<Enter><Enter>\end{itemize}<Enter><++><Esc>2ki<Tab>
vim.api.nvim_create_autocmd("FileType", {
    pattern='tex',
    callback=function()
        vim.keymap.set('i','<leader>i','\\begin{itemize}<Enter><Enter>\\end{itemize}<Enter><++><Esc>2ki<Tab>',{noremap=true})
    end
})

--au FileType tex inore ;e \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><++><Esc>2ki<Tab>
vim.api.nvim_create_autocmd("FileType", {
    pattern='tex',
    callback=function()
        vim.keymap.set('i','<leader>e','\\begin{enumerate}<Enter><Enter>\\end{enumerate}<Enter><++><Esc>2ki<Tab>',{noremap=true})
    end
})

--au FileType tex nnore j gj
vim.api.nvim_create_autocmd("FileType", {
    pattern='tex',
    callback=function()
        vim.keymap.set('n','j','gj',{noremap=true})
    end
})

--au FileType tex nnore k gk
vim.api.nvim_create_autocmd("FileType", {
    pattern='tex',
    callback=function()
        vim.keymap.set('n','k','gk',{noremap=true})
    end
})
