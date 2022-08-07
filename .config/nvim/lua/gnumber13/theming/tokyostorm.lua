-- Example config in Lua

vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer", "netrw" }

vim.g.tokyonight_dark_sidebar = true
vim.g.tokyonight_transparent = false
vim.g.tokyonight_transparent_sidebar = false
vim.g.tokyonight_lualine_bold = true

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colo tokyonight]]
-- ======================config for lightline=========================
-- keep original bg of terminal
-- vim.g.lightline = { ['colorscheme'] = 'tokyonight' }
-- ===================================================================
