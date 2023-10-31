vim.b.fdm="syntax"
vim.api.nvim_create_autocmd("FileType", {
    pattern='c',
    callback=function()
        vim.keymap.set('i','`<Space>','<Esc>/<++><Enter>"_4cl',{noremap=true})
    end
})
vim.api.nvim_create_autocmd("FileType", {
    pattern='c',
    callback=function()
        vim.keymap.set('n','co','I// <Esc>',{noremap=true})
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern='c',
    callback=function()
        vim.keymap.set('n','cu','s/^\\(\\s*\\)\\/\\//\\1/<cr>:noh<cr>',{silent=true,noremap=true})
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern='c',
    callback=function()
        vim.keymap.set('i','`i','#include <><++><Esc>4hi',{noremap=true})
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern='c',
    callback=function()
        vim.keymap.set('n','zf','j[[kzt``k',{noremap=true})
    end
})

