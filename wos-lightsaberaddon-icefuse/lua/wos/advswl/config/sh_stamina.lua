--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/config/sh_stamina.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

if not wOS then
	wOS = {}
end

-- Enable the stamina mod?
wOS.EnableStamina = false

if not wOS.EnableStamina then return end

-- Amount of stamina lost when doing a normal attack ( Out of 100 )
wOS.AttackCost = 15

-- Amount of stamina lost when doing a heavy attack ( Out of 100 )
wOS.HeavyCost = 35

hook.Add( "InitPostEntity", "wOS.LoadStaminaFuncs", function()

	local meta = FindMetaTable( "Player" )
	
	function meta:CanUseStamina( heavy )
		local stam = wOS.AttackCost
		if heavy then
			stam = wOS.HeavyCost
		end
		if self:GetStamina() < stam then return false end
		
		return true
	end

	function meta:GetStamina()
		return self:GetNW2Float( "Stamina", 100 )
	end

	function meta:SetStamina( num )
		self:SetNW2Float( "Stamina", num )
	end

	function meta:AddStamina( num )
		self:SetStamina( math.Clamp( self:GetStamina() + num, 0, 100 ) )
	end
	
	if SERVER then
		hook.Add( "Think", "wOS.PlayerStaminaChecks", function()

			for _,ply in pairs( player.GetAll() ) do
				if not IsValid( ply ) then continue end
				if not ply:Alive() then continue end
				if ply.IsBlocking then continue end
				if ply:GetStamina() >= 100 then continue end
				ply:AddStamina( 0.5 )
			end

		end )

		hook.Add( "PlayerSpawn", "wOS.resetStam", function( ply )
			ply:SetStamina( 100 )
		end )
	end

end )