fns = require "gnumber13.myfunctions"
-- vim.opt.foldmethod = 'indent'

------------------ autocmds ----------------------------------

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    group = vim.api.nvim_create_augroup("autoroot", { clear = true }),
    pattern = {"*"},
    callback = fns.cd_to_buffer,  -- Or myvimfun
})

---------------------------------------------------------------
-- vim.cmd('syntax enable')
-- vim.cmd('filetype plugin indent on')

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.bo.expandtab = true

--vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.o.fileencodings = "utf-8"

vim.o.fileformats = "unix,dos,mac"
vim.o.wildmenu = true

-- Fix backspace indent
vim.o.backspace="indent,eol,start"

--vim.g.netrw_liststyle = 3  -- tree view
--vim.g.netrw_liststyle = 0  -- default

vim.g.netrw_liststyle = 1  -- default with details
vim.g.netrw_winsize = 25 --  set treeview width
vim.g.netrw_banner = false --  set treeview width

vim.o.hidden = true -- "open buffer in background
vim.cmd('set nowrap')
vim.o.number = true
vim.o.relativenumber = true

vim.o.splitbelow = true
--vim.o.cursorline = true
vim.o.scrolloff = 8
vim.o.signcolumn = "yes"
