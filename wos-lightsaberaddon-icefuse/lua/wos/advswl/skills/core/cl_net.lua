--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/skills/core/cl_net.lua
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
local PLAYER = LocalPlayer()
																																																																																		

net.Receive( "wOS.SkillTree.SendPlayerData", function()

	local equipped_skills = net.ReadTable()
	local localplayer = net.ReadBool()
	
	if localplayer then
		wOS.EquippedSkills = table.Copy( equipped_skills )
	else
		local ply = net.ReadEntity()
		ply.EquippedSkills = table.Copy( equipped_skills )
	end

end )

wOS.TreeIcons = {}
wOS.TreeIcons[ "Help Menu" ] = { MainIcon = Material( "wos/skilltrees/icefuse_wos_icon.png", "unlitgeneric" ) }

net.Receive( "wOS.SkillTree.SendTrees", function()
	local tbl = net.ReadTable()	if not tbl then return end
	wOS.SkillTrees = wOS.SkillTrees or {}
	for name, data in pairs( tbl ) do		wOS.SkillTrees[ name ] = table.Copy( data )
		if not wOS.TreeIcons[ name ] then
			wOS.TreeIcons[ name ] = {}
			wOS.TreeIcons[ name ].MainIcon = Material( data.TreeIcon, "unlitgeneric" )
			for tier, sdata in pairs( data.Tier ) do
				wOS.TreeIcons[ name ][ tier ] = {}
				for skill, info in pairs( sdata ) do
					wOS.TreeIcons[ name ][ tier ][ skill ] = {}
					wOS.TreeIcons[ name ][ tier ][ skill ].Icon = Material( info.Icon, "unlitgeneric" )
				end
			end
		end
	end

end )

net.Receive( "wOS.SkillTree.RefreshWeapon", function()

	local name = net.ReadString()
	local self = LocalPlayer():GetWeapon( name )
	if not IsValid( self ) then return end
	
	self.ForcePowerList = net.ReadTable()
	self.DevestatorList = net.ReadTable()
	
	self.ForcePowers = {}
	self.AvailablePowers = table.Copy( wOS.AvailablePowers )
	for _, force in pairs( self.ForcePowerList ) do
		if not self.AvailablePowers[ force ] then continue end
		self.ForcePowers[ #self.ForcePowers + 1 ] = self.AvailablePowers[ force ]
	end
	
	self.Devestators = {}
	self.AvailableDevestators = table.Copy( wOS.AvailableDevestators )
	for _, dev in pairs( self.DevestatorList ) do
		if not self.AvailableDevestators[ dev ] then continue end
		self.Devestators[ #self.Devestators + 1 ] = self.AvailableDevestators[ dev ]
	end

end )

net.Receive( "wOS.SkillTree.RefreshForms", function()

	local name = net.ReadString()
	local self = LocalPlayer():GetWeapon( name )
	if not IsValid( self ) then return end
	
	self.Forms = net.ReadTable()
	self.Stances = net.ReadTable()
	self.UseForms = {}
	for _, form in pairs( self.Forms ) do
		self.UseForms[ form ] = true
	end

end )