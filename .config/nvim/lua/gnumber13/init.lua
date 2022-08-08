-- --------------------------- user modules -------------------------------------
-- ./coreopts/init.lua
require "gnumber13.coreopts"
-- ./options/init.lua
require "gnumber13.options"
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
local os = require "os"

command = 'echo "background_opacity 1.0" > $HOME/.config/kitty/opacity.conf && kill -SIGUSR1 $(pgrep kitty)'
os.execute('echo hello')
-- sh.command('')

myfuns.source_vimscripts(
	-- ../../vimscript/settings.vim
	--"settings.vim"
)

print_table = myfuns.print_table
-- -----------------------------------------------------------------------------
