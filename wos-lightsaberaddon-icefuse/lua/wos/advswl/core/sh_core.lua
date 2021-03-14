--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/core/sh_core.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

wOS = wOS or {}
																																																																																																																																																						
PrecacheParticleSystem("har_explosion_a")
PrecacheParticleSystem("har_explosion_b")
PrecacheParticleSystem("har_explosion_c")
PrecacheParticleSystem("har_explosion_a_air")
PrecacheParticleSystem("har_explosion_b_air")
PrecacheParticleSystem("har_explosion_c_air")

if CLIENT then
	game.AddParticles( "particles/harry_explosion.pcf" )
end

-- hook.Add( "OnPlayerHitGround", "wOS.RestartAnimationOnLand", function( ply, inWater, onFloater, speed )

	-- local wep = ply:GetActiveWeapon()
	-- if not IsValid( wep ) or not wep.IsLightsaber then return end
	-- if ply:GetNW2Float( "wOS.DevestatorTime", 0 ) >= CurTime() then return end
	-- if wep.AerialLand then
		-- ply:SetSequenceOverride( "vanguard_a_s1_land", 0 )
		-- ply:SetNW2Float( "wOS.SaberAttackDelay", CurTime() + 0 )
		-- wep.AerialLand = false
		-- return
	-- end
	
	-- ply:SetSequenceOverride()
	
-- end )	