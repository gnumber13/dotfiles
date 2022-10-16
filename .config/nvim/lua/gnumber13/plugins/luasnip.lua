
-- ------------ snippet files ------------------
-- ./generic_snippets.lua
require "gnumber13.plugins.generic_snippets"
-- ./sh_snippets.lua
require "gnumber13.plugins.sh_snippets"

require("luasnip.loaders.from_snipmate").lazy_load({paths = "~/.config/nvim/snippets"})

-- ----------------------------------------------
