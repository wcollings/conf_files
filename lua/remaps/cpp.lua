vim.api.nvim_create_autocmd("FileType", {
    pattern='cpp',
	 command="set fdm=syntax"
})
vim.api.nvim_create_autocmd("FileType", {
    pattern='cpp',
    callback=function()
        vim.keymap.set('i','<leader><Space>','<Esc>/<++><Enter>"_4cl',{noremap=true})
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern='cpp',
    callback=function()
        vim.keymap.set('i','<leader>i','#include <><++><Esc>4hi',{noremap=true})
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern='cpp',
    callback=function()
        vim.keymap.set('i','<leader>u','using namespace std;<Enter>',{noremap=true})
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern='cpp',
    callback=function()
        vim.keymap.set('n','co','I//<Esc>',{noremap=true})
    end
})
vim.api.nvim_create_autocmd("FileType", {
    pattern='cpp',
    callback=function()
        vim.keymap.set('n','cu','^xx',{noremap=true})
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern='cpp',
    callback=function()
        vim.keymap.set('n','zf','j[[kzt``k',{noremap=true})
    end
})

