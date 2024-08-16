--au FileType cpp set fdm=syntax
-- vim.api.nvim_create_autocmd("FileType", {
--     pattern={'c','cpp',},
-- 	 command="set fdm=syntax"
-- })
--jump to and remove my tag
vim.api.nvim_create_autocmd("FileType", {
    pattern={'c','cpp',},
    callback=function()
        vim.keymap.set('i','<leader><Space>','<Esc>/<++><Enter>"_4cl',{noremap=true})
    end
})


vim.api.nvim_create_autocmd("FileType", {
    pattern={'c','cpp',},
    pattern='cpp',
    callback=function()
        vim.keymap.set('i','<leader>i','#include <><++><Esc>4hi',{noremap=true})
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern={'c','cpp',},
    callback=function()
        vim.keymap.set('i','<leader>u','using namespace std;<Enter>',{noremap=true})
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern={'c','cpp',},
    callback=function()
        vim.keymap.set('n','co','I//<Esc>',{noremap=true})
    end
})
vim.api.nvim_create_autocmd("FileType", {
    pattern={'c','cpp',},
    callback=function()
        vim.keymap.set('n','cu','^xx',{noremap=true})
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern={'c','cpp',},
    callback=function()
        vim.keymap.set('n','zf','j[[kzt``k',{noremap=true})
    end
})

vim.cmd([[
setlocal cinkeys-=0#
]])
