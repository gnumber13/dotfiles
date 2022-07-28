bufline = require "bufferline"

bufline.setup{
    options = {
        mode = "buffers", -- can also be set to "tabs" to see tabpages
        themable = false, -- whether or not the highlights for this plugin can be overriden.
        numbers = "buffer_id",--  | "both" | function({ ordinal, id, lower, raise }): string,
        close_command = "bdelete! %d", --      can be a string | function, see "Mouse actions"

        modified_icon = "●",

        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is deduplicated
        tab_size = 18,

        show_buffer_icons = true,
        show_buffer_default_icon = true, -- whether or not an unrecognised filetype should show a default icon
        show_tab_indicators = true,

        show_close_icon = false,
        show_buffer_close_icons = false,
    }
}

