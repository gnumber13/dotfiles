-- ---------- options -------------------
-- {{{1 
vim.cmd([[colo slate]])
vim.opt.foldmethod = "marker"

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.bo.expandtab = true

vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.o.fileencodings = "utf-8"

vim.o.fileformats = "unix,dos,mac"

vim.o.hidden = true -- "open buffer in background
vim.cmd([[set nowrap]])
vim.o.number = true
vim.o.relativenumber = true

vim.o.splitbelow = true

--vim.o.cursorline = true
vim.o.scrolloff = 8
vim.o.signcolumn = "yes"

vim.o.termguicolors = true
-- }}}1
-- ---------------------------------------

-- --------- keymappings -----------------
-- {{{1
noremap = { noremap = true }
remap = { noremap = false }

vim.g.mapleader = ","

vim.cmd('iabbrev _sh #!/bin/sh')
vim.api.nvim_set_keymap('n', 'ö', '`', noremap)

-- Switching windows
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', noremap)
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', noremap)
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', noremap)
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', noremap)

vim.api.nvim_set_keymap('n', '<Enter>', 'gf', noremap)
-- }}}1
