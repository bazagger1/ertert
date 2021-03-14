--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/entities/wos_character_station/shared.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

ENT.Type 		= "anim"
ENT.PrintName	= "Character Skill Station"
ENT.Author		= "King David"
ENT.Contact		= ""
ENT.Category = "Icefuse Utilities"
ENT.Spawnable			= true
ENT.AdminSpawnable		= true

function ENT:Think()
	if not self.BuildingSound then
		self.BuildingSound = CreateSound( self.Entity, "ambient/levels/citadel/citadel_hub_ambience1.mp3" )
		self.BuildingSound:Play()		self.BuildingSound:ChangeVolume( 0.5, 0 )
	end
end

function ENT:OnRemove()
	self.BuildingSound:Stop()
end