--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/skills/core/sh_core.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]




wOS = wOS or {}
																																																																																																																																																						

local meta = FindMetaTable( "Player" )

----GET FUNCTIONS

function meta:GetSkillPoints()
	return self:GetNW2Int( "wOS.SkillPoints", 0 )
end

function meta:GetSkillLevel()
	return self:GetNW2Int( "wOS.SkillLevel", 0 )
end

function meta:GetSkillXP()
	return self:GetNW2Int( "wOS.SkillExperience", 0 )
end

function meta:GetSkillRequiredXP()
	local level = self:GetSkillLevel()
	return wOS.XPScaleFormula( level )
end

function meta:HasSkillEquipped( tree, tier, skill )

	if not self.EquippedSkills[ name ] then return false end
	if not self.EquippedSkills[ name ][ tier ] then return false end
	
	return self.EquippedSkills[ name ][ tier ][ skill ]
	
end

function meta:CanEquipSkill( tree, tier, skill )

	local skilldata = wOS.SkillTrees[ name ][ tier ][ skill ]
	
	if not skilldata then return false end
	
	if table.Count( skilldata.Requirements ) < 1 then return true end
	
	for num, skills in pairs( skilldata.Requirements ) do
		if not self:HasSkillEquipped( tree, skills[1], skills[2] ) then return false end
	end
	
	if self:GetSkillPoints() < skilldata.PointsRequired then return false end
	
	return true
	
end