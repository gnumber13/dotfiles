-- https://wiki.archlinux.org/title/Neovim#Language_Server_Protocol

-- pacman -S ccls
require'lspconfig'.ccls.setup{}

-- yay -S jdtls
require'lspconfig'.jdtls.setup{}

-- rustup component add rust-analyzer (nightly toolchain)
-- add `export PATH="$PATH:$HOME/.local/share/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin"`
-- to your ~/.profile or ~/.bashrc
require'lspconfig'.rust_analyzer.setup{}

-- pacman -S jedi-language-server
require'lspconfig'.jedi_language_server.setup{}

-- pacman -S deno
require'lspconfig'.denols.setup{}

-- pacman -S dart
require'lspconfig'.dartls.setup{}

-- pacman -S vscode-css-languageserver 
require'lspconfig'.cssls.setup{}

-- pacman -S vscode-html-languageserver 
require'lspconfig'.html.setup{}

-- pacman -S lua-language-server
-- require'lspconfig'.somneko_lua.setup{}

-- pacman -S yaml-language-server
require'lspconfig'.yamlls.setup{}

-- yay -S marksman-bin
require'lspconfig'.marksman.setup{}

