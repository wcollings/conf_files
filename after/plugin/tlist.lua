vim.g.Tlist_Use_Horiz_Window = 1
vim.g.Tlist_Auto_Open = 0
vim.g.Tlist_Exit_OnlyWindow = 1
vim.g.Tlist_Auto_Update = 1
vim.g.Tlist_GainFocus_On_ToggleOpen = 1
vim.g.Tlist_Close_On_Select = 1
vim.g.Tlist_Sort_Type='order'
vim.keymap.set('n','\\',':noh<cr>',{silent=true})
vim.keymap.set('n','Z',':TlistToggle<cr>',{silent=true})
