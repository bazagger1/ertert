--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/effects/thor_strike/init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]


EFFECT.Mat = Material( "trails/electric" )

function EFFECT:Init( data )

	self.Position = data:GetStart()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	
	self.StartPos = data:GetOrigin()
	self.EndPos = data:GetStart()
	
	local dir = self.StartPos - self.EndPos
	dir:Normalize()
	
	self.Dir = dir
	
	self.Entity:SetRenderBoundsWS( self.StartPos, self.EndPos )
	
	self.Alpha = 100
	self.Color = Color( 0, 255, 255, self.Alpha )
	
	local dlight = DynamicLight( self:EntIndex() )
	
	if dlight then
	
		dlight.Pos = self.StartPos
		dlight.r = 255
		dlight.g = 150
		dlight.b = 50
		dlight.Brightness = 3
		dlight.Decay = 256
		dlight.size = 256 * math.Rand( 0.5, 1.0 )
		dlight.DieTime = CurTime() + 5
		
	end

end

function EFFECT:Think( )

	self.Entity:SetRenderBoundsWS( self.StartPos, self.EndPos )

	self.Alpha = self.Alpha - FrameTime() * 200
	self.Color = Color( 255, 255, 255, self.Alpha )
	
	return self.Alpha > 0

end

function EFFECT:Render( )

	if self.Alpha < 1 then return end
	
	--[[self.Length = ( self.StartPos - self.EndPos ):Length()
	
	render.SetMaterial( self.Mat )
	render.DrawBeam( self.StartPos, self.EndPos, ( 100 / self.Alpha ) * 0.5 + 0.5, 0, 0, self.Color )]]
	
	if ( self.Alpha < 1 ) then return end

	self.Length = (self.StartPos - self.EndPos):Length()
		
	local texcoord = CurTime() * -0.2
	
	for i = 1, 10 do
	
		render.SetMaterial( self.Mat )
		
		texcoord = texcoord + i * 0.05 * texcoord
	
		render.DrawBeam( self.StartPos, 										
						self.EndPos,											
						i * self.Alpha * 0.03,									
						texcoord,												
						texcoord + (self.Length / (128 + self.Alpha)),		
						self.Color )
						

		render.DrawSprite( self.StartPos + self.Dir * i, i * 5, i * 5, Color( self.Color.r, self.Color.g, self.Color.b, self.Alpha ) )
		render.DrawSprite( self.EndPos, i * 5, i * 5, Color( self.Color.r, self.Color.g, self.Color.b, self.Alpha ) )
	
	end

end
