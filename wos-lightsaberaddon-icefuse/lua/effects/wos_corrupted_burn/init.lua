--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/effects/wos_corrupted_burn/init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]


function EFFECT:Init( data )
	local pos = data:GetOrigin()
	local dir = data:GetNormal()
	local len = data:GetRadius()
	local color = data:GetAngles()
	local emitter = ParticleEmitter( pos )

	local number_lol = 1

	if ( !emitter ) then return end

	for i = 0, len / number_lol do
		local pos2 = pos + dir * ( len - i * number_lol )
		--local particle = emitter:Add( "effects/muzzleflash"..math.random(1,4), pos2 )
		local particle = emitter:Add( "particle/bendibeam", pos2 )
		if ( particle ) then
			particle:SetLifeTime( 0 )
			particle:SetDieTime( 0.3 )

			particle:SetGravity( Vector( 0, 0, math.random( 32, 128 ) ) )
			particle:SetVelocity( Vector( math.random( -8, 8 ), math.random( -8, 8 ), math.random( -8, 8 ) ) )

			particle:SetStartSize( 1 )
			particle:SetEndSize( 0 )

			particle:SetStartAlpha( math.random( 100, 200 ) )
			particle:SetEndAlpha( 0 )

			particle:SetColor( color.p, color.y, color.r )
			particle:SetAngleVelocity( Angle( math.Rand( -180, 180 ), math.Rand( -180, 180 ), math.Rand( -180, 180 ) ) )
			//particle:SetLighting( true )
		end
	end

	emitter:Finish()
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end
