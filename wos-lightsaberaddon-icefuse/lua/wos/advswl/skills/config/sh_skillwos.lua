--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/skills/config/sh_skillwos.lua
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
wOS.MinimumExperience = 100

-- wOS.MinimumExperience = 1000

--Create your own leveling formula with this. The default property is a quadratic increase
--( level^2 )*wOS.MinimumExperience*0.5 + level*wOS.MinimumExperience + wOS.MinimumExperience
--This amounts to the ( ax^2 + bx + c ) format of increase
--You can use this to create set amounts per level by returning a table
--If you need help setting this up you'll probably want to ask, but it's just simple math so there's probably tutorials everywhere


wOS.XPScaleFormula = function( level )
	local required_experience = ( level^2 )*wOS.MinimumExperience*0.5 + level*wOS.MinimumExperience + wOS.MinimumExperience
	return required_experience
end 

--What is the max level for the Skill Leveling? Set this to FALSE if you want it to go infinitely
wOS.SkillMaxLevel = 50

--Should we be able to see the Combat Level and XP on the HUD?
wOS.MountLevelToHUD = false

--Should we be able to see the combat level of other players above their head?
wOS.MountLevelToPlayer = false