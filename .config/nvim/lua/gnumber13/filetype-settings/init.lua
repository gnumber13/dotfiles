function no_line_numbers()
    vim.opt.number = false
    vim.opt.relativenumber = false
    vim.cmd([[:resize 10<CR>]])
end

function set_compact_formatting()
-- for html, xml, markdown,
-- yaml, toml, etc...    --
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.expandtab = true
end


function set_markdown_keymaps()
vim.api.nvim_set_keymap('v', ',do', 'norm I- [ ]', {noremap = true})
-- au FileType markdown nnoremap ,co o```<Esc>kO```<Esc>
-- au FileType markdown nnoremap ,x ^f[lrX<Esc>
-- au FileType markdown nnoremap ,r ^f[lr <Esc>
-- Vimwiki has a table function
-- --  norm I- [ ]
end

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter", "TabEnter"}, {
    pattern = { "*.html", "*.toml", "*.xml", "*.md", "*.yaml" },
    callback = set_compact_formatting
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter", "TabEnter"}, {
    pattern = "*.md",
    callback = set_markdown_keymaps
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter", "TabEnter"}, {
    pattern = { "*bashrc.d/*" },
    command = "set syntax=sh"
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter", "TabEnter"}, {
    pattern = { "*.lua" },
    command = "set syntax=lua"
})
vim.api.nvim_create_autocmd({"TermOpen"}, {
    callback = no_line_numbers
})
