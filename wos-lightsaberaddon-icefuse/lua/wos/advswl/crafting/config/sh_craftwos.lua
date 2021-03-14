--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/crafting/config/sh_craftwos.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

wOS = wOS or {}

--How much experience is required for the first level?
--This is an assumption based on my default quadratic increase, but it may have no purpose to you.
wOS.SaberMinimumExperience = 200

--Create your own leveling formula with this. The default property is a quadratic increase
--( level^2 )*wOS.MinimumExperience*0.5 + level*wOS.MinimumExperience + wOS.MinimumExperience
--This amounts to the ( ax^2 + bx + c ) format of increase
--You can use this to create set amounts per level by returning a table
--If you need help setting this up you'll probably want to ask, but it's just simple math so there's probably tutorials everywhere
wOS.SaberXPScaleFormula = function( level )
	local required_experience = ( level^2 )*wOS.SaberMinimumExperience*0.5 + level*wOS.SaberMinimumExperience + wOS.SaberMinimumExperience
	return required_experience
end 

--What is the max level for the proficiency system? Set this to FALSE if you want it to go infinitely
wOS.SaberMaxLevel = false

--How many proficiency levels will it take before the saber gets another misc slot?
wOS.LevelPerSlot = 10

wOS.DefaultPersonalSaber = {}
wOS.DefaultPersonalSaber.UseHilt = "models/sgg/starwars/weapons/w_common_jedi_saber_hilt.mdl"
wOS.DefaultPersonalSaber.UseLength = 38
wOS.DefaultPersonalSaber.UseWidth = 2
wOS.DefaultPersonalSaber.UseColor = Color( 255, 0, 0 )
wOS.DefaultPersonalSaber.UseDarkInner  = 0
wOS.DefaultPersonalSaber.SaberDamage  = 50
wOS.DefaultPersonalSaber.SaberBurnDamage  = 5
wOS.DefaultPersonalSaber.CustomSettings = {}

wOS.DefaultSecPersonalSaber = {}
wOS.DefaultSecPersonalSaber.UseHilt = "models/sgg/starwars/weapons/w_common_jedi_saber_hilt.mdl"
wOS.DefaultSecPersonalSaber.UseLength = 38
wOS.DefaultSecPersonalSaber.UseWidth = 2
wOS.DefaultSecPersonalSaber.UseColor = Color( 255, 0, 0 )
wOS.DefaultSecPersonalSaber.UseDarkInner  = 0
wOS.DefaultSecPersonalSaber.SaberDamage  = 50
wOS.DefaultSecPersonalSaber.SaberBurnDamage  = 5
wOS.DefaultSecPersonalSaber.CustomSettings = {}


wOS.MaxInventorySlots = 20

--Where is the crafting camera located? ( VECTOR POSITION )
wOS.CraftingCamLocation = Vector( -9999, -9999, -9999 )