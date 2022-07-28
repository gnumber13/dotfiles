" html
" expand html tag
au FileType html set tabstop=2
au FileType html set shiftwidth=2
au FileType html set expandtab
au FileType html map <Leader>tg viwyea></<Esc>pa><Esc>3bi<<Esc>wwli
au FileType html iabbrev h1 <h1></h1>
au FileType html iabbrev ul <ul></ul>
au FileType html iabbrev nav <nav></nav>

"toml
"
au FileType toml set tabstop=2
au FileType toml set shiftwidth=2
au FileType toml set expandtab


"markdown
"
au FileType markdown set tabstop=2
au FileType markdown set shiftwidth=2
au FileType markdown set expandtab

au FileType markdown vnoremap ,td norm I*
au FileType markdown nnoremap ,co o```<Esc>kO```<Esc>
" norm I- [ ]
au FileType markdown nnoremap ,x ^f[lrX<Esc>
au FileType markdown nnoremap ,r ^f[lr <Esc>
au FileType markdown nnoremap ,tb I\|\|\|<Esc>o\|:-:\|:-:\|<Esc>o\|\|\|<Esc>^2ka
"<CR>|:-:|:-:|<CR>|||<Esc>^2ka

