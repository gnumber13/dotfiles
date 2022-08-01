-- --------------------------- user modules -------------------------------------
-- ./plugins/init.lua
require "gnumber13.plugins"
-- ./theming/init.lua
require "gnumber13.theming"
-- ./filetype-settings/init.lua
require "gnumber13.filetype-settings"
-- ./myfunctions/init.lua
myfuns = require "gnumber13.myfunctions"
-- ./keymappings/init.lua
require "gnumber13.keymappings"
-- ./sessions/init.lua
sess = require "gnumber13.sessions"
-- -----------------------------------------------------------------------------

-- ------------------------------- functions -----------------------------------
myfuns.source_vimscripts(
       -- "tmp.vim", -- for vim settings waiting to be migrated
        "settings.vim")

print_table = myfuns.print_table
-- -----------------------------------------------------------------------------
