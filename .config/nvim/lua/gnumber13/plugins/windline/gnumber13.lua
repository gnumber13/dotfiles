local windline = require('windline')
local b_components = require('windline.components.basic')
git_components = require('windline.components.git')
local state = _G.WindLine.state

local hl_list = {
    Black = { 'white', 'black' },
    White = { 'black', 'white' },
    Normal = { 'NormalFg', 'NormalBg' },
    Inactive = { 'InactiveFg', 'InactiveBg' },
    Active = { 'ActiveFg', 'ActiveBg' },
}

local basic = {}
basic.divider = { b_components.divider, hl_list.Normal }

local colors_mode = {
    Normal = { 'black', 'magenta' },
    Insert = { 'black', 'green' },
    Visual = { 'black', 'yellow' },
    Replace = { 'black', 'blue_light' },
    Command = { 'black', 'red' },
}

basic.vi_mode = {
    name = 'vi_mode',
    hl_colors = colors_mode,
    text = function()
        return { { ' ' .. state.mode[1] .. ' ', state.mode[2],
    } }
    end,
}

basic.right = {
    hl_colors = colors_mode,
    text = function()
        return {
            { ' ', state.mode[2] },
            { b_components.progress },
            { ' ' },
            { b_components.line_col },
        }
    end,
}
git_branch = {
    text = function()
        --fugi_status = string.gsub(fugi_status, "]","")
        --fugi_status = string.gsub(fugi_status, "[", "")
        return{
            {"%{FugitiveStatusline()}", ''}
           -- {git_components.git_branch, ''}
        }
    end,
}
local default = {
    filetypes = { 'default' },
    active = {
        basic.vi_mode,
        {' ', { 'white', 'NormalBg' } },
        { b_components.cache_file_name('[No Name]', 'unique') },
	    --git_components.git_branch,
        basic.divider,
        git_branch,
	    --git.git_branch,
        --basic.fugitive_branch,
        basic.divider,
        { b_components.cache_file_type({ icon = true }), '' },
        { ' ' },
        { b_components.file_format({ icon = true }), { 'white', 'NormalBg' } },
        { ' ' },
        { b_components.file_encoding(), '' },
        { ' ' },
        basic.right,
    },
    inactive = {
        { b_components.full_file_name, hl_list.Inactive },
        basic.divider,
        { b_components.line_col, hl_list.Inactive },
        { b_components.progress, hl_list.Inactive },
    },
}

windline.setup({
    statuslines = {
        default,
    },
})
