--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/anim/cl_forcesequence.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

wOS = wOS or {}

hook.Add( "CalcMainActivity", "wOS.ClientAnimations", function( ply, velocity )
	
	if ply:InVehicle() then return end
	
	if ply:GetNW2Float( "wOS.ChokeTime", 0 ) >= CurTime() then
        local seq = ply:LookupSequence( "wos_force_choke" )
        if seq <= 0 then return end
        return -1, seq
    end
	
	if ply.SeqOverride and ply.SeqOverride >= 0 then 
		return -1, ply.SeqOverride
	end
	
	local wep = ply:GetActiveWeapon()
	if not IsValid( wep ) then return end
	if not wep.IsLightsaber then return end
	
    if ply:GetNW2Bool("IsMeditating", false) then
        return -1, ply:LookupSequence( "sit_zen" )
    end
	
	if ply:GetNW2Bool( "wOS.IsChanneling", false ) then
		return -1, ply:LookupSequence( "idle_dual" )
	end
	
	if not wep.GetEnabled then return end
	if not wep:GetEnabled() then return end
	if not wep:GetNW2Bool( "SWL_CustomAnimCheck", false ) then return end
	
	local len2d = velocity:Length2D()
	local stance = wep:GetStance()
	local form = wOS.Form.LocalizedForms[ wep:GetForm() ]																																																																																
	local seq = ""
	
	if wep.IsDualLightsaber then
		local formdata = wOS.Form.Duals[ form ][ stance ]
		if ( len2d > 1 ) then
			if ply:GetNW2Bool( "IsBlocking", false ) and ply:GetNW2Float( "BlockTime", 0 ) >= CurTime() then 
				seq = "walk_slam"
			else 
				seq = formdata[ "run" ]
			end
		else
			if ply:GetNW2Bool( "IsBlocking", false ) and ply:GetNW2Float( "BlockTime", 0 ) >= CurTime() then 
				seq = "judge_b_block"
			else 
				seq = formdata[ "idle" ]
			end
		end	
	else
		local formdata = wOS.Form.Singles[ form ][ stance ]
		if ( len2d > 1 ) then
			if ply:GetNW2Bool( "IsBlocking", false ) and ply:GetNW2Float( "BlockTime", 0 ) >= CurTime() then 
				seq = "run_melee2"
			else 
				seq = formdata[ "run" ]
			end
		else
			if ply:GetNW2Bool( "IsBlocking", false ) and ply:GetNW2Float( "BlockTime", 0 ) >= CurTime() then 
				seq = "judge_b_block"
			else 
				seq = formdata[ "idle" ]
			end
		end	
	end
	
	if ply:Crouching() then
		seq = "cwalk_knife"
	end		
	
	if ply:GetNW2Float( "wOS.ForceAnim", 0 ) >= CurTime() then
		seq = "walk_magic"
	end
	
	if not ply:IsOnGround() then 
		seq = "balanced_jump"
	end
	
	seq = ply:LookupSequence( seq )
	
	if seq <= 0 then return end
	
	return -1, seq
	
end )

net.Receive( "wOS.RecievePlayerSeq", function( length, client )

		local ply = net.ReadEntity()																																																																														
		if not IsValid( ply ) then return end
		
		local seq = net.ReadString()
		seq = ply:LookupSequence( seq )
		
		local rate = net.ReadFloat()
		ply:SetCycle( 0 ) 
		
		if IsValid(ply) then
			ply.SeqOverride = seq or -1
			ply.SeqOverrideRate = rate or 1.0
		end
		
end )												