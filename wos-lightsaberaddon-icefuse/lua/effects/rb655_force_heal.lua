--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/effects/rb655_force_heal.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]


function EFFECT:Init( data )
	local pos = data:GetOrigin()
	local emitter = ParticleEmitter( pos )

	if ( !emitter ) then return end

	local particle = emitter:Add( "effects/rb655_health_over_bg", pos + Vector( math.random( -16, 16 ), math.random( -16, 16 ), math.random( 0, 72 ) ) )
	if ( particle ) then
		particle:SetLifeTime( 0 )
		particle:SetDieTime( 2 )

		particle:SetGravity( Vector( 0, 0, 100 ) )
		particle:SetVelocity( Vector( 0, 0, 0 ) )

		particle:SetStartSize( math.random( 4, 6 ) )
		particle:SetEndSize( math.random( 0, 1 ) )

		particle:SetStartAlpha( math.random( 200, 255 ) )
		particle:SetEndAlpha( 0 )

		particle:SetColor( 255, 0, 0 )
		--particle:SetAngleVelocity( Angle( math.Rand( -180, 180 ), math.Rand( -180, 180 ), math.Rand( -180, 180 ) ) )
	end

	emitter:Finish()
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end
