-- original: https://github.com/Nosssa/NossLock/blob/main/ExecutorDetector
-- Message to Nosssa, Please dont blacklist me.


--// Log_Exploit_Type
local LocalPlayer = game:GetService("Players").LocalPlayer
local IdentifyExecutor = false
_G.StopSynapseTempK = false
_G.UsingSynapse = false
_G.UsingMain = false
_G.UsingOther = false
_G.UsingUnknown = false

--// Ascertain_Identity
if not identifyexecutor() then
	LocalPlayer:Kick("Error: Unsupported Executor or Use Old Krnl not Beta.") task.wait(9e9)
end

local RetrieveExecutor = identifyexecutor()

--// Assign, For Each Typeof(executor)
pcall(function()
	if RetrieveExecutor == "Synapse X" then

		IdentifyExecutor = true
		
		_G.UsingSynapse = true

	elseif RetrieveExecutor == "ScriptWare" then

		IdentifyExecutor = true
		
		_G.UsingMain = true

	elseif RetrieveExecutor == "Krnl" then

		IdentifyExecutor = true
		
		_G.UsingMain = true

	elseif RetrieveExecutor == "Oxygen U" then

		IdentifyExecutor = true
		
		_G.UsingOther = true
		
	elseif RetrieveExecutor == "Fluxus" then

		IdentifyExecutor = true
		
		_G.UsingOther = true
		
		_G.UsingUnknown = false
		
	elseif RetrieveExecutor == "Coco Z" then

		IdentifyExecutor = false
		
		LocalPlayer:Kick("Error: Uknown / Unsupported Executor.")

		task.wait(9e9)
		
	elseif RetrieveExecutor == "Kiwi X" then

		IdentifyExecutor = false
		
		LocalPlayer:Kick("Error: Uknown / Unsupported Executor.")

		task.wait(9e9)
		
	elseif RetrieveExecutor == "WrapGlobal" then

		IdentifyExecutor = false

		LocalPlayer:Kick("Error: Shitty Exploit.")

		task.wait(9e9)
		
	elseif RetrieveExecutor == "jit" then

		IdentifyExecutor = false

		LocalPlayer:Kick("Error: Stop Using JJSploit.")

		task.wait(9e9)
		
	else

		--// Likely to break all hookfunctions and metatables?
		
		IdentifyExecutor = true

		_G.UsingUnknown = true
		
	end
end)
