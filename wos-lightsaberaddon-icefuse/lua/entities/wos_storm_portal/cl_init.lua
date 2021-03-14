--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/entities/wos_storm_portal/cl_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]


include('shared.lua')

function ENT:Initialize()
end

function ENT:Think()

	if not self.Effect then
		self.Effect = ClientsideModel( "models/effects/portalrift.mdl" )
		self.Effect:SetPos( self:GetPos() + Vector( 0, 0, 950 ) )
	end
	
end

function ENT:OnRemove()
	if self.Effect then
		self.Effect:Remove()
	end
end

local warp = Material("sprites/heatwave")

function ENT:Draw()
	render.SetMaterial( warp )	
	render.DrawBox( self:GetPos(), self:GetAngles(), self:OBBMins(), self:OBBMaxs(), Color( 0, 255, 0, 255 ), true )
end

