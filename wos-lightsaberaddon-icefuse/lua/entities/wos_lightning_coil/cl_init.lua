--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/entities/wos_lightning_coil/cl_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

include('shared.lua')

local model_orb = Model("models/Combine_Helicopter/helicopter_bomb01.mdl")
local mat_orb = "models/alyx/emptool_glow"
local r = 28 / 4

ENT.Radius = 100
ENT.LifeSpan = 0

function ENT:Initialize()
	
	self:CreateBoom()		
end

function ENT:CreateBoom()

   if IsValid( self.Orb ) then self.Orb:Remove() end
   self.StartLife = CurTime()
   self.LifeSpan = CurTime() + 0.5
   self.Orb = ClientsideModel(model_orb, RENDERGROUP_OPAQUE )
   self.Orb:SetRenderMode( RENDERMODE_TRANSALPHA )
   self.Orb:SetPos( self.Owner:GetPos() )
   self.Orb:SetColor( Color( 255, 255, 255, 100 ) )
   self.Orb:SetModelScale( 0, 0 )
   self.Orb:SetMaterial( "models/effects/splodearc_sheet" ) 
   self:EmitSound( "weapons/physcannon/energy_sing_explosion2.wav", 100, math.random( 65, 135 ) )
end

function ENT:OnRemove()

	if IsValid( self.Orb ) then
		self.Orb:Remove()
	end

end

function ENT:Think()
	if IsValid( self.Orb ) then
	
       local ratio = ( CurTime() - self.StartLife ) / 0.01
	   self.Orb:SetModelScale( ratio, 0 ) 
	   self.Orb:SetMaterial( mat_orb )
	   self.Orb:SetPos( self.Owner:GetPos() )	   
	   if self.LifeSpan <= CurTime() then
			self:CreateBoom()
	   end
	end
	
end

function ENT:Draw()
	
end

