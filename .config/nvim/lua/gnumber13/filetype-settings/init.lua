-- {{{1 functions --------------
function no_line_numbers()
    vim.opt.number = false
    vim.opt.relativenumber = false
    --vim.cmd([[:resize 10<CR>]])
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
	-- vim.api.nvim_set_keymap('n', '<F5>', '!/bin/sh %', {noremap = true})
	-- au FileType markdown nnoremap ,co o```<Esc>kO```<Esc>
	-- au FileType markdown nnoremap ,x ^f[lrX<Esc>
	-- au FileType markdown nnoremap ,r ^f[lr <Esc>
	-- Vimwiki has a table function
	-- --  norm I- [ ]
end

function set_sh_keymaps()
	local cmd = get_runcmd("sh")
	print(cmd)
	vim.api.nvim_set_keymap('n', '<F5>', cmd, {noremap = true})
end

function get_runcmd(filetype)
	dict = {
		sh = "!/bin/sh %",
		python = "!/bin/python %",
		lua = "!/bin/lua %",
		c = "!/bin/gcc % -o /tmp/a.out && /tmp/a.out",
	}

	return dict[filetype]
end

-- }}}1
-- ------------------------------


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
    pattern = { "*bashrc.d/*", "*.sh" },
	callback = set_sh_keymaps
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter", "TabEnter"}, {
    pattern = { "*.lua" },
    command = "set syntax=lua"
})

vim.api.nvim_create_autocmd({"TermOpen"}, {
    callback = no_line_numbers
})

