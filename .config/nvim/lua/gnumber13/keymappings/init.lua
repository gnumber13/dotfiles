noremap = { noremap = true }
remap = { noremap = false }
-- ---------------------------- Macro Recipies --------------------------------
-- f$i"jjwwbwbea" -- encase bash var in doublequotes (must start before variable on the line)
-- ----------------------------------------------------------------------------

-- --------------------------- Function Keys ----------------------------------
-- don't remap F11 and F12
-- any mode
    -- execute last ex command
    vim.api.nvim_set_keymap('', '<F2>', [[@:]], remap)

--  normal mode
    vim.api.nvim_set_keymap('n', '<F8>', [[:bprev<CR>]], noremap)
    vim.api.nvim_set_keymap('n', '<F9>', [["+p]], noremap) -- :checkhealth for clipboard provider

--  normal mode
    vim.api.nvim_set_keymap('n', '<F8>', [[:bprev<CR>]], noremap)
    vim.api.nvim_set_keymap('n', '<backspace><CR>', [[:bprev<CR>]], noremap)
    vim.api.nvim_set_keymap('n', '<F9>', [["+p]], noremap) -- :checkhealth for clipboard provider
    -- vim.api.nvim_set_keymap('n', 'p', [["xp]], noremap)
    -- vim.api.nvim_set_keymap('n', 'P', [["xP]], noremap)
    -- vim.api.nvim_set_keymap('n', 'Y', [["xY]], noremap)  -- yy is mapped to Y
    -- vim.api.nvim_set_keymap('n', 'dd', [[^"xD]], noremap)  -- yy is mapped to Y
    -- vim.api.nvim_set_keymap('n', 'D', [["xD]], noremap)  -- yy is mapped to Y
    -- vim.api.nvim_set_keymap('n', 'C', [["xC]], noremap)  -- yy is mapped to Y
    -- vim.api.nvim_set_keymap('n', 'cc', [[^"xC]], noremap)  -- yy is mapped to Y
    -- vim.api.nvim_set_keymap('n', 'Y', [["xY]], noremap)  -- yy is mapped to Y
    -- vim.api.nvim_set_keymap('n', 'Y', [["xY]], noremap)  -- yy is mapped to Y

-- 
-- -- visual mode
    vim.api.nvim_set_keymap('v', '<F9>', [["+y]], noremap)
    vim.api.nvim_set_keymap('v', 'y', [["xy]], noremap)

-- ----------------------------------------------------------------------------

-- -------------------------- abbreviations -----------------------------------
vim.cmd('iabbrev _hi Hello World ')
vim.cmd('iabbrev _sh #!/bin/sh')
vim.cmd('iabbrev _incl #include <')
vim.cmd('iabbrev _bats #!/usr/bin/env bats')
vim.cmd('iabbrev _bats_test @test "" {<CR><TAB><CR>}<Esc>2k^f"')
-- vim.cmd('iabbrev ``` ```<CR><CR>```<Esc>ki')
-- vim.cmd('iabbrev ``` ``````')
vim.cmd('iabbrev tex $$<CR><CR>$$<Esc>ki')
vim.cmd('iabbrev cmain int main () {<CR><CR>}<Esc>ki')
----------------------------------------------------------------------------



------------------ For plugins: --------------------------------------------
-- Snippy
-- vim.api.nvim_set_keymap(''
-- Goyo
vim.api.nvim_set_keymap('n', 'go', ':Goyo<CR>:set wrap<CR>:set linebreak<CR>', noremap)
vim.api.nvim_set_keymap('n', 'yo', ':Goyo!<CR>:set nowrap<CR>', noremap)

-- "" example
vim.cmd('nmap <C-s> <Plug>MarkdownPreview')
vim.cmd('nmap <M-s> <Plug>MarkdownPreviewStop')
vim.cmd('nmap <C-p> <Plug>MarkdownPreviewToggle')

vim.api.nvim_set_keymap('n', '<C-s>', '<Plug>MarkdownPreview<CR>', noremap)
vim.api.nvim_set_keymap('n', '<M-s>', '<Plug>MarkdownPreviewStop<CR>', noremap)
vim.api.nvim_set_keymap('n', '<C-p>', '<Plug>MarkdownPreviewToggle<CR>', noremap)

vim.api.nvim_set_keymap('v', '<Leader>tl', '<Plug>VimwikiToggleListItem', noremap)
vim.api.nvim_set_keymap('n', '<Leader>tl', '<Plug>VimwikiToggleListItem', noremap)
vim.api.nvim_set_keymap('n', 'glo', ':VimwikiChangeSymbolTo a)<CR>', noremap)
vim.api.nvim_set_keymap('n', 'gld', ':VimwikiChangeSymbolTo - <CR>', noremap)
vim.api.nvim_set_keymap('n', 'gla', ':VimwikiChangeSymbolTo * <CR>', noremap)
vim.api.nvim_set_keymap('n', 'glt', ':VimwikiChangeSymbolTo - [ ]<CR>', noremap)
-- ----------------------------------------------------------------------------

-- ----------------------- leader commands ------------------------------------




-- set <leader> to ','
vim.g.mapleader = ","

-- nduco
vim.api.nvim_set_keymap('n', '<Leader>ad', '<cmd>lua sess.detach()<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>aa', '<cmd>lua sess.attach()<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>ss', '<cmd>lua sess.SaveSession()<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>lss', '<cmd>lua sess.ListSessions()<CR>', noremap)

-- goto buffer
vim.api.nvim_set_keymap('n', '<Leader>1', '<cmd>b1<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>2', '<cmd>b2<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>3', '<cmd>b3<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>4', '<cmd>b4<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>5', '<cmd>b5<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>6', '<cmd>b6<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>7', '<cmd>b7<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>8', '<cmd>b8<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>9', '<cmd>b9<CR>', noremap)



-- Close buffer
vim.api.nvim_set_keymap('', '<leader>d', ':bd<CR>', noremap)

-- vim.api.nvim_set_keymap(
vim.api.nvim_set_keymap('', '<F3>', ':Lex<CR>', noremap)
vim.api.nvim_set_keymap('', '<M-down>', [[:resize +3<CR>]], noremap)
vim.api.nvim_set_keymap('', '<leader>sv', [[:resize -3<CR>]], noremap)
vim.api.nvim_set_keymap('', '<leader>sh', [[<C-w>3<>]], noremap)
vim.api.nvim_set_keymap('', '<leader>gh', [[<Cw>3>]], noremap)

-- Split
vim.api.nvim_set_keymap('n', '<Leader>i', ':<C-u>vsplit<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>v', ':<C-u>vsplit<CR>', noremap)
vim.api.nvim_set_keymap('n', '<Leader>u', ':split<CR>', noremap)

-- Buffer nav
vim.api.nvim_set_keymap('', '<leader>q', ':bp<CR>', noremap)
vim.api.nvim_set_keymap('', '<leader>w', ':bn<CR>', noremap)

-- Switching windows
vim.api.nvim_set_keymap('', '<leader>j', '<C-w>j', noremap)
vim.api.nvim_set_keymap('', '<leader>k', '<C-w>k', noremap)
vim.api.nvim_set_keymap('', '<leader>l', '<C-w>l', noremap)
vim.api.nvim_set_keymap('', '<leader>h', '<C-w>h', noremap)

-- Find files using Telescope command-line sugar.
vim.api.nvim_set_keymap('n', '<leader>b', '<cmd>Telescope buffers<cr>', noremap)
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', noremap)
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', noremap)
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', noremap)
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', noremap)
-- ----------------------------------------------------------------------------


-- -------------------------- unsorted ----------------------------------------
-- normal mode
vim.api.nvim_set_keymap('n', '<Enter>', 'gf', noremap)
-- -- open terminal right
vim.api.nvim_set_keymap('n', '<leader>tt', ':terminal<CR>i', noremap)
vim.api.nvim_set_keymap('n', '<leader>th', ':sp<CR>:terminal<CR>:resize 10<CR>i', noremap)
vim.api.nvim_set_keymap('n', '<leader>tx', 'iexit<CR>', noremap)

vim.api.nvim_set_keymap('n', '<leader>xp', '<C-w><C-_>', noremap)
vim.api.nvim_set_keymap('n', '<leader>ct', '<C-w><C-_>:resize -10<CR>', noremap)

-- change directories
-- globally
vim.api.nvim_set_keymap('n', '<leader><leader>gcd', [[:cd %:p:h<CR>]], noremap) 
-- per window
vim.api.nvim_set_keymap('n', '<leader><leader>cd', [[:lcd %:p:h<CR>]], noremap)


-- fugitive
vim.api.nvim_set_keymap('n', '<leader>gadd', ':G add .<CR>', noremap)
vim.api.nvim_set_keymap('n', '<leader>gcmt', ':G commit -m "', noremap)
vim.api.nvim_set_keymap('n', '<leader>push', ':G push<CR>', noremap)


-- vim.api.nvim_set_keymap('n', '<leader>te', '', nomemap)
-- vim.api.nvim_set_keymap('n', 'tt', ':vs<Return><C-w>w:terminal<Return>i', noremap)
-- 
-- insert mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', noremap)

-- terminal mode
-- -- map esc-sequence of term-buffer to <esc>
vim.cmd([[tnoremap <Esc> <C-\><C-n>]])
vim.cmd([[tnoremap jj <C-\><C-n>]])

-- visual mode
-- -- Vmap for maintain Visual Mode after shifting > and <
vim.api.nvim_set_keymap('v', '<', '<gv', remap)
vim.api.nvim_set_keymap('v', '>', '>gv', remap)


-- ----------------------------------------------------------------------------
