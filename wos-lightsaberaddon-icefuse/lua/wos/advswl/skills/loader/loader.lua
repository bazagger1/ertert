--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/skills/loader/loader.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]


--[[-------------------------------------------------------------------
	Advanced Lightsaber Combat Loader:
		Loads all the files and such
			Powered by
						  _ _ _    ___  ____  
				__      _(_) | |_ / _ \/ ___| 
				\ \ /\ / / | | __| | | \___ \ 
				 \ V  V /| | | |_| |_| |___) |
				  \_/\_/ |_|_|\__|\___/|____/ 
											  
 _____         _                 _             _           
|_   _|__  ___| |__  _ __   ___ | | ___   __ _(_) ___  ___ 
  | |/ _ \/ __| '_ \| '_ \ / _ \| |/ _ \ / _` | |/ _ \/ __|
  | |  __/ (__| | | | | | | (_) | | (_) | (_| | |  __/\__ \
  |_|\___|\___|_| |_|_| |_|\___/|_|\___/ \__, |_|\___||___/
                                         |___/             
----------------------------- Copyright 2017, David "King David" Wiltos ]]--[[
							  
	Lua Developer: King David
	Contact: https://store.icefuse.net/store.php
		
-- Copyright 2017, David "King David" Wiltos ]]--

wOS = wOS or {}

--This order may look completely stupid, and you'd ask why I wouldn't just cluster them all together
--Well, load orders are very important, and this is the best way to control it

if SERVER then
	
	AddCSLuaFile( "wos/advswl/skills/config/sh_skillwos.lua" )	
	AddCSLuaFile( "wos/advswl/skills/core/sh_core.lua" )
	AddCSLuaFile( "wos/advswl/skills/core/cl_core.lua" )	
	AddCSLuaFile( "wos/advswl/skills/core/cl_net.lua" )
	
end

include( "wos/advswl/skills/config/sh_skillwos.lua" )

if SERVER then
	
	include( "wos/advswl/skills/config/sv_skillwos.lua" )
	include( "wos/advswl/skills/core/sv_core.lua" )
	include( "wos/advswl/skills/core/sh_core.lua" )
	include( "wos/advswl/skills/core/sv_skill_register.lua" )
	include( "wos/advswl/skills/core/sv_wrappers.lua" )
	include( "wos/advswl/skills/core/sv_net.lua" )
	include( "wos/advswl/skills/core/sv_concommands.lua" )
	
else
	
	include( "wos/advswl/skills/core/sh_core.lua" )	
	include( "wos/advswl/skills/core/cl_core.lua" )
	include( "wos/advswl/skills/core/cl_net.lua" )
	
end