--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-icefuse_saber_hitmarkers/lua/autorun/ifnsabermarkers_loader.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

//
/*
    Loads the light saber hit markers modules 

    10/13/2018
    Badass Development
*/
/*
	Includes a project module in both lua environments (server, client)
*/
local function IncludeProjectModule(path)
	include(path .. "/shared.lua");
	
	if (SERVER) then 
		AddCSLuaFile(path .. "/shared.lua");
		AddCSLuaFile(path .. "/cl_init.lua");
		include(path .. "/init.lua");
	else
		include(path .. "/cl_init.lua");
	end
end

/*
	Config
*/
include("ifnsabermarkers/config/config.lua");
if (SERVER) then 
	AddCSLuaFile("ifnsabermarkers/config/config.lua");
end

/*
	Modules
*/
IncludeProjectModule("ifnsabermarkers/core");
