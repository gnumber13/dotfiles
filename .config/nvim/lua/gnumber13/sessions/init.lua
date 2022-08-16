local M = {}

xdg_state = io.popen("echo $XDG_STATE_HOME")

if not (xdg_state == "" )
then
    vim.g.sessionDir = "$XDG_STATE_HOME/nvim/sessions/"
else
    vim.g.sessionDir = "./sessions/"
end

vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize"

function dirLookup(dir)
   local p = io.popen('find "'..dir..'" -type f')  --Open directory look for files, save data in p. By giving '-type f' as parameter, it returns all files.     
   i = 1 
   for file in p:lines() do                         --Loop through all files
       print("[" ..  i .. "] - "..file)       
	   i = i +1
   end
end

function M.LoadSession(dir)
    local dir = vim.g.sessionDir
	local session_id = userInput()	
  	local p = io.popen('find "'..dir..'" -type f')  --Open directory look for files, save data in p. By giving '-type f' as parameter, it returns all files.     

	local lines = p:lines()

	i = 1 

	for line in p:lines() do 
		if i == tonumber(session_id) then
			local full_path = line
		end
	--	print(i)
		i = i + 1 
	end

    vim.cmd(':source ' .. full_path)
	
end

function M.ListSessions()
	dirLookup(vim.g.sessionDir)
end

function userInput()
    local fname = vim.fn.input("Filename: ", "", "file")
    return fname
end

function M.SaveSession()
    local session_file = userInput()
    local session_dir = vim.g.sessionDir
	local full_session_path = session_dir .. session_file

	makeSession(full_session_path)
end

function makeSession(full_session_path)
    vim.cmd(':wa')
    vim.cmd(':mksession! ' .. full_session_path)
end
function M.ListSessions()
    local session_dir = vim.g.sessionDir
    dirLookup(session_dir)
end

function M.detach()
    local session_file = "detach_session"
    print(session_file)
    local session_dir = vim.g.sessionDir
	local full_session_path = session_dir .. session_file

	makeSession(full_session_path)
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
