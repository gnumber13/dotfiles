-- ./lua/gnumber13/init.lua
require "gnumber13"
-- ---------------------- 3rd party modules ------------------------------------
-- lsp
require'lspconfig'.bashls.setup{}
-- json
require "json"
-- -----------------------------------------------------------------------------

-- ------------------------------- functions -----------------------------------
myfuns.source_vimscripts(
--  ~/.config/nvim/vimscript/tmp.vim
       -- "tmp.vim", -- for vim settings waiting to be migratet
--  ~/.config/nvim/vimscript/settings.vim
        "settings.vim"
        -- "filetype.vim"
)

print_table = myfuns.print_table
-- -----------------------------------------------------------------------------
