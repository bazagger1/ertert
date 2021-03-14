--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/core/cl_net.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]


--[[-------------------------------------------------------------------
	Advanced Combat System Core Net Functions:
		Needed for the thing to work!
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
																																																																																		
net.Receive( "wOS.SyncForm", function( len, ply )

	local wep = net.ReadEntity()
	if not wep.IsLightsaber then return end
	
	wep.CurForm = net.ReadString( 32 )

end )

net.Receive( "wOS.SyncRegistration", function( len, ply )

	wOS = wOS or {}
	wOS.Lightsabers = net.ReadTable()

end )

net.Receive( "wOS.Lightsaber.SlamTime", function( len, ply )

	local wep = net.ReadEntity()
	if not wep.IsLightsaber then return end
	
	local time = net.ReadInt( 32 )
	
	wep.DevestatorTime = CurTime() + time

end )