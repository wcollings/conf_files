vim.api.nvim_create_autocmd("FileType", {
    pattern={'tcl',},
    callback=function()
			vim.opt.foldmethod = "syntax"
			vim.opt.foldexpr = ""
    end
})
