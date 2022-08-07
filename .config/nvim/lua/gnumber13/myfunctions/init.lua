local M = {}
io = require "io"
json = require "json"

function M.dir_lookup(dir)
-- from: https://stackoverflow.com/questions/5303174/how-to-get-list-of-directories-in-lua -- 
   local p = io.popen('find "'..dir..'" -type f')  --Open directory look for files, save data in p. By giving '-type f' as parameter, it returns all files.     
   for file in p:lines() do                         --Loop through all files
       print(file)       
   end
   p:close()
end

function M.cd_to_buffer()
    buffnum = vim.api.nvim_get_current_buf()
    full_buffpath = vim.api.nvim_buf_get_name(buffnum)

    if not (full_buffpath == "") 
		and not (freeze_root == true) 
		and not (ignore_autoroot_whith_terminal == true) 
	then
        buff_dir = fullpath_to_dir(full_buffpath)
        vim.api.nvim_set_current_dir(buff_dir)
    end
end

function M.freeze_root_toggle() 
	buffnum = vim.api.nvim_get_current_buf()
    full_buffpath = vim.api.nvim_buf_get_name(buffnum)

	if (freeze_root == false) or (freeze_root == nil) then
		freeze_root = true
		print("freezing root to: " .. fullpath_to_dir(full_buffpath))
	elseif (freeze_root == true) then
		freeze_root = false
		print("autoroot reenabled")
	end

end

function fullpath_to_filename (fullpath)
    local rev_fullpath = string.reverse(fullpath)
    local rev_split_text = string.gmatch(rev_fullpath, "[^/]+")

    for rev_lvl in rev_split_text do
        rev_filname = rev_lvl
        break
    end

    output = string.reverse(rev_filname)
    return(output)
end

function fullpath_to_dir (fullpath)
    local fullpath = string.reverse(fullpath)
    local split_text = string.gmatch(fullpath, "[^/]+")

    local i = 1
    local concat = ""
    for lvl in split_text do
        if i >= 2 then
            concat = concat .. lvl .. "/"
            --print(split_text[1])
        end
        i = i + 1 
    end

    output = string.reverse(concat)
    return(output)
end

function M.nvim_buf_get_dir(buffnum)
    local x = vim.api.nvim_buf_get_name(buffnum)

    var = string.gmatch(x, "[^/]*/") 

    for i in var do
        print(i)
    end

    
end
function M.source_vimscripts (...)
    local args = {...}

    for key,file in ipairs(args) do
        local source_cmd = "source $HOME/.config/nvim/vimscript/"
        vim.cmd(source_cmd .. file)
    end
end

function M.itemsInDir(dir)
    local p = io.popen('la -A1 "' ..dir.. '" | wc -l')
    print(p:read("*a"))
    p:close()
end

function M.print_table (tbl)
    for key,val in pairs(tbl) do
        print(key .. " " .. val)
    end
end

function M.print_syntax ()
    print(vim.o.syntax)
end

function M.list_bufs ()
    local bufnums = vim.api.nvim_list_bufs()
    local scrollindex = {}
    local counter = 1
    for index in ipairs(bufnums) do
        local bufname = vim.api.nvim_buf_get_name(index)
        local buf_is_loaded = vim.api.nvim_buf_is_loaded(index)
        if (buf_is_loaded == true) then
            scrollindex[index] = counter
            bufstatus = "active" 
            counter = counter + 1
        else 
            bufstatus = "inactive"
        end
        print(index .. " " .. tostring(scrollindex[index]) .. "|" ..  tostring(bufstatus) .. " " .. bufname)
    end
end
function M.get_keymaps(mode) 
    print(mode)
    local var = vim.api.nvim_get_keymap(mode)

    for i,v in ipairs(var) do
        print(v.data)
    end

    --local json_table = json.encode_table(var)
end
function M.userinput()
    local fname = vim.fn.input("File: ", "", "file")
    print(fname)
end

-- function M.buf_plus_one ()
    -- bufnums = vim.api.nvim_list_bufs()
-- end
-- function M.buf_minus_one ()
-- 
-- end

return M
