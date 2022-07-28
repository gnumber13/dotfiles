" abbreviations
iabbrev _hi Hello World 
iabbrev _sh #!/bin/sh
iabbrev _incl #include <
iabbrev _bats #!/usr/bin/env bats
iabbrev _bats_test @test "" {<CR><TAB><CR>}<Esc>2k^f"
iabbrev ``` ```<CR><CR>```<Esc>ki
iabbrev tex $$<CR><CR>$$<Esc>ki
iabbrev cmain int main () {<CR><CR>}<Esc>ki




"" any mode 
"noremap <F3> :Lex<Return>
"noremap <C-i> :resize +3<CR>
"noremap <C-n> :resize -3<CR>
"noremap <C-p> <C-w>3<>
"noremap <C-u> <C-w>3>
"
"" Normalmode 
"
"nnoremap <F8> :buffers<CR>:buffer<Space>
"nnoremap <Enter> gf
"nnoremap <Tab> $
"nnoremap <S-Tab> ^
"
"
"" Insertmode
"inoremap jj <Esc>
"
"" open terminal right
"nnoremap tt :vs<Return><C-w>w:terminal<Return>i
"
"" Terminalbuffer "insertmode"
"" map esc-sequence of term-buffer to <esc>
"tnoremap <Esc> <C-\><C-n>
"tnoremap <C-w>w <Esc><C-w>w
"tnoremap <C-w>j <C-\><C-n><C-w>j
"tnoremap <C-w>k <C-\><C-n><C-w>k
"tnoremap <C-w>h <C-\><C-n><C-w>h
"tnoremap <C-w>l <C-\><C-n><C-w>l
""... and jj
"tnoremap jj <C-\><C-n>

"set if filetype is python
"au FileType python noremap <C-j>j :w !python3<Return>
" in ~/.local/bin/compile
"map  <C-j>j :w! \| !compile % <CR><CR>



" for plugin: markdown-preview
"" normal/insert
"<Plug>MarkdownPreview
"<Plug>MarkdownPreviewStop
"<Plug>MarkdownPreviewToggle

"" example
"nmap <C-s> <Plug>MarkdownPreview
"nmap <M-s> <Plug>MarkdownPreviewStop
"nmap <C-p> <Plug>MarkdownPreviewToggle
"
"
""" Map leader to ,
"let mapleader= ","
"
""" Split
"nnoremap <Leader>i :<C-u>vsplit<CR>
"nnoremap <Leader>v :<C-u>vsplit<CR>
"nnoremap <Leader>u :split<CR>
"
""" Buffer nav
"noremap <leader>q :bp<CR>
"noremap <leader>w :bn<CR>
"
""" Close buffer
"noremap <leader>d :bd<CR>
"
""" Switching windows
"noremap <leader>j <C-w>j
"noremap <leader>k <C-w>k
"noremap <leader>l <C-w>l
"noremap <leader>h <C-w>h
"
""" Vmap for maintain Visual Mode after shifting > and <
"vmap < <gv
"vmap > >gv
"
"" For plugins:
"
"" Goyo
"nnoremap go :Goyo<CR>:set wrap<CR>
"nnoremap yo :Goyo!<CR>:set nowrap<CR>
"
"" Find files using Telescope command-line sugar.
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>
