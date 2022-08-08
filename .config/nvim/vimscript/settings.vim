
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

augroup journal
    autocmd VimEnter */Journal/** setlocal complete=k$HOME/Dokumente/Journal/**
    autocmd VimEnter */Journal/** 0r /tmp/journal.md
    autocmd VimEnter */Journal/** /About
    autocmd VimEnter */Journal/** :norm fp
augroup END

"autosource configs when written to them
au BufWritePost $MYVIMRC source %
au BufWritePost $HOME/.config/nvim/settings.vim source %
au BufWritePost $HOME/.config/nvim/keymappings.vim source %
au BufWritePost $HOME/.config/nvim/plugins.vim source %


" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'







"set fileencoding=utf-8
"set fileencodings=utf-8

" set tabstop to 4 chars and fill with spaces
"set tabstop=4
"set shiftwidth=4
"set expandtab
"set fileformats=unix,dos,mac
"set clipboard=unnamed


"set path+=**
"set wildmenu

"let g:netrw_liststyle=3     " tree view
"let g:netrw_winsize=20	    " set treeview width
"set number
"set relativenumber
"set clipboard+=unnamedplus

"set hidden "open buffer in background
"set nowrap "display long lines as one line
"set splitbelow
"set encoding=utf-8
"set cursorline
"set scrolloff=8
"set signcolumn=yes
" Fix backspace indent
"set backspace=indent,eol,start
"syntax enable

"filetype plugin indent on
