local M = {}
io = require "io"
json = require "json"

function M.dirLookup(dir)
-- from: https://stackoverflow.com/questions/5303174/how-to-get-list-of-directories-in-lua -- 
   local p = io.popen('find "'..dir..'" -type f')  --Open directory look for files, save data in p. By giving '-type f' as parameter, it returns all files.     
   for file in p:lines() do                         --Loop through all files
       print(file)       
   end
   p:close()
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
