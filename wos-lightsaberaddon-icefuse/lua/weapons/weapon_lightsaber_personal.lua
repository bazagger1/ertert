--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/weapons/weapon_lightsaber_personal.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

AddCSLuaFile()


SWEP.Author = "Robotboy655 + King David"
SWEP.Category = "Lightsabers"
SWEP.Contact = ""
SWEP.RenderGroup = RENDERGROUP_BOTH
SWEP.Slot = 0
SWEP.SlotPos = 4
SWEP.Spawnable = true
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.DrawWeaponInfoBox = false
SWEP.ViewModel = "models/weapons/v_crowbar.mdl"
SWEP.WorldModel = "models/sgg/starwars/weapons/w_anakin_ep2_saber_hilt.mdl"
SWEP.ViewModelFOV = 55
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"

------------------------------------------------------------THINGS YOU WILL EDIT ARE BELOW HERE-------------------------------------------------------------------------
SWEP.PrintName = "Personal Lightsaber" --Name of the lightsaber
SWEP.Class = "weapon_lightsaber_personal" --The file name of this swep
SWEP.DualWielded = false --Should this be a dual wielded saber?
SWEP.CanMoveWhileAttacking = true -- Can the user move while attacking
SWEP.SaberDamage = 10000 --How much damage the saber does when it's being swung
SWEP.SaberBurnDamage = 1 -- How much damage the saber does when it's colliding with someone ( coming in contact with laser )
SWEP.MaxForce = 100 --The maximum amount of force in the meter
SWEP.RegenSpeed = 1 --The MULTIPLIER for the regen speed. Half speed = 0.5, Double speed = 2, etc.
SWEP.CanKnockback = true --Should this saber be able to push people back when they get hit?

SWEP.UseSkills = true
SWEP.PersonalLightsaber = true
SWEP.UseLength = 50

SWEP.CustomSettings = {}

SWEP.UseForms = {
	["Default"] = { 1 }
}

SWEP.ForcePowerList = {
"Meditate",
"Channel Hatred"
} 

--Use these options to overwrite the player's commands
SWEP.UseHilt = false -- Model path of the hilt
SWEP.UseWidth = false -- Width of the saber
SWEP.UseColor = false -- RGB Color of saber. Red = Color( 255, 0, 0 ) Blue = Color( 0, 0, 255 ), etc.
SWEP.UseDarkInner = false -- Does it have a dark inner? 1 = true
SWEP.UseLoopSound = false -- The loop sound path
SWEP.UseSwingSound = false -- The swing sound path
SWEP.UseOnSound = false -- The on sound path
SWEP.UseOffSound = false -- The off sound path

--These are the ones for the second saber for dual wielding. If you are using a single saber, this doesn't do shit
SWEP.UseSecHilt = false
SWEP.UseSecLength = false
SWEP.UseSecWidth = false
SWEP.UseSecColor = false
SWEP.UseSecDarkInner = false

-----------------------------------------------------------END OF EDIT----------------------------------------------------------------


if !SWEP.DualWielded then
	SWEP.Base = "wos_adv_single_lightsaber_base"
else
	SWEP.Base = "wos_adv_dual_lightsaber_base"
end



if CLIENT then
	killicon.Add( SWEP.Class, "lightsaber/lightsaber_killicon", color_white )
end
