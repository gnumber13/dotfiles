local M = {}

vim.g.sessionDir = "$XDG_STATE_HOME/nvim/sessions/"
vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize"

function dirLookup(dir)
   local p = io.popen('find "'..dir..'" -type f')  --Open directory look for files, save data in p. By giving '-type f' as parameter, it returns all files.     
   for file in p:lines() do                         --Loop through all files
       print(file)       
   end
end

function userInput()
    local fname = vim.fn.input("Filename: ", "", "file")
    return fname
end

function M.SaveSession()
    local session_file = userInput()
    local session_dir = vim.g.sessionDir
    vim.cmd(':mksession! ' .. session_dir .. session_file)
end

function M.ListSessions()
    local session_dir = vim.g.sessionDir
    dirLookup(session_dir)
end

function M.detach()
    local session_file = "detach_session"
    print(session_file)
    local session_dir = vim.g.sessionDir
    vim.cmd(':mksession! ' .. session_dir .. session_file)
    vim.cmd(':wa')
    vim.cmd(':qa!')
end

function M.attach()
    session_file = "detach_session"
    local session_dir = vim.g.sessionDir
    vim.cmd(':source ' .. session_dir .. session_file)
end
-- session_dir = vim.g.sessionDir
--SaveSession("sesh3")
--dirLookup(session_dir)
return M
