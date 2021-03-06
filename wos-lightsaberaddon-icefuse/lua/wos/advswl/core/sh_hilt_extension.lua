--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/core/sh_hilt_extension.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

--[[-------------------------------------------------------------------
	Zhrom Hilt Extensions:
		Adding more hilts automatically!
			Powered by
						  _ _ _    ___  ____  
				__      _(_) | |_ / _ \/ ___| 
				\ \ /\ / / | | __| | | \___ \ 
				 \ V  V /| | | |_| |_| |___) |
				  \_/\_/ |_|_|\__|\___/|____/ 
											  
 _____         _                 _             _           
|_   _|__  ___| |__  _ __   ___ | | ___   __ _(_) ___  ___ 
  | |/ _ \/ __| '_ \| '_ \ / _ \| |/ _ \ / _` | |/ _ \/ __|
  | |  __/ (__| | | | | | | (_) | | (_) | (_| | |  __/\__ \
  |_|\___|\___|_| |_|_| |_|\___/|_|\___/ \__, |_|\___||___/
                                         |___/             
----------------------------- Copyright 2017, David "King David" Wiltos ]]--[[
							  
	Lua Developer: King David
	Contact: https://store.icefuse.net/store.php
		
-- Copyright 2017, David "King David" Wiltos ]]--

wOS = wOS or {}

hook.Add( "PostGamemodeLoaded", "wOS.AddZhromHilts", function()

	if wOS.EnableZhromExtension then 
		
		list.Set( "LightsaberModels", "models/dani/dani.mdl", {} )
		list.Set( "LightsaberModels", "models/donation gauntlet/donation gauntlet.mdl", {} )
		list.Set( "LightsaberModels", "models/donation1/donation1.mdl", {} )	
		list.Set( "LightsaberModels", "models/donation2/donation2.mdl", {} )	
		list.Set( "LightsaberModels", "models/donation3/donation3.mdl", {} )
		list.Set( "LightsaberModels", "models/donation4/donation4.mdl", {} )
		list.Set( "LightsaberModels", "models/donation7/donation7.mdl", {} )	
		list.Set( "LightsaberModels", "models/lightsaber/lightsaber.mdl", {} )	
		list.Set( "LightsaberModels", "models/lightsaber2/lightsaber2.mdl", {} )
		list.Set( "LightsaberModels", "models/lightsaber3/lightsaber3.mdl", {} )
		list.Set( "LightsaberModels", "models/lightsaber4/lightsaber4.mdl", {} )	
		list.Set( "LightsaberModels", "models/pike/pike.mdl", {} )		
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_reborn_saber_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_1_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_2_hilt.mdl", {} )	
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_3_hilt.mdl", {} )	
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_4_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_5_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_6_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_7_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_8_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_9_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_dual_1_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_dual_2_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_dual_3_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_dual_4_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/sgg/starwars/weapons/w_saber_dual_5_hilt.mdl", {} )
		list.Set( "LightsaberModels", "models/snake/snake.mdl", {} )
		list.Set( "LightsaberModels", "models/snake2/snake2.mdl", {} )	
		list.Set( "LightsaberModels", "models/training/training.mdl", {} )	
		list.Set( "LightsaberModels", "models/trident/trident.mdl", {} )
		list.Set( "LightsaberModels", "models/donation gauntlet/donation gauntlet.mdl", {} )
		list.Set( "LightsaberModels", "models/donation1/donation1.mdl", {} )	
		list.Set( "LightsaberModels", "models/donation1/donation1.mdl", {} )	

		if SERVER then
			-- resource.AddWorkshop( "740395760" )
		end
	end
	
	if wOS.EnableCloneAdventures then
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/aaylasecura.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/adigalia.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/ahsoka.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/byph.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/compressedcrystal.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/darkforcephase1.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/darkforcephase2.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/darkknight1.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/darkknight2.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/darksaber.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/darksaberancient.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/darthmaul.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/exile.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/felucia1.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/felucia2.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/forked.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/ganodi.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/gungan.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/gungi.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/jocastanu.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/kashyyyk.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/katooni.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/kitfisto.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/lightsideaffiliation.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/luminara.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/petro.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/pulsating.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/pulsatingblue.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/reverseahsoka.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/saeseetiin.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/samurai.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/shaakti.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/sparklingcrystal.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/spiralling.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/talz.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/training.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/trainingbuggy.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/unstable.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/ventress.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/zatt.mdl", {} )
		list.Set( "LightsaberModels", "models/starwars/cwa/lightsabers/zebra.mdl", {} )
		
		if SERVER then
			-- resource.AddWorkshop( "866341452" )
		end		
	end
	
end )