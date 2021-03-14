--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/config/sh_hiltwos.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

wOS = wOS or {}

hook.Add( "PostGamemodeLoaded", "wOS.AddHiltsforJobs", function()

-- This is where you put the saber path you want to have access to. 
-- YOU MUST PUT THE PATH HERE BEFORE PUTTING THEM IN A JOB/ULX!
wOS.AllSaberModels = {
"models/sgg/starwars/weapons/w_anakin_ep2_saber_hilt.mdl",
"models/sgg/starwars/weapons/w_anakin_ep3_saber_hilt.mdl",
"models/sgg/starwars/weapons/w_common_jedi_saber_hilt.mdl",
"models/sgg/starwars/weapons/w_luke_ep6_saber_hilt.mdl",
"models/sgg/starwars/weapons/w_mace_windu_saber_hilt.mdl",
"models/sgg/starwars/weapons/w_maul_saber_half_hilt.mdl",
"models/sgg/starwars/weapons/w_obiwan_ep1_saber_hilt.mdl",
"models/sgg/starwars/weapons/w_obiwan_ep3_saber_hilt.mdl",
"models/sgg/starwars/weapons/w_quigon_gin_saber_hilt.mdl",
"models/sgg/starwars/weapons/w_sidious_saber_hilt.mdl",
"models/sgg/starwars/weapons/w_vader_saber_hilt.mdl",
"models/sgg/starwars/weapons/w_yoda_saber_hilt.mdl",
"models/weapons/starwars/w_kr_hilt.mdl",
"models/weapons/starwars/w_maul_saber_staff_hilt.mdl",
"models/weapons/starwars/w_dooku_saber_hilt.mdl",
}

-- The saber models you want everyone to have. It's formatted the exact same way as the above
-- EXAMPLE: wOS.DefaultSaberModels = { "models/sgg/starwars/weapons/w_mace_windu_saber_hilt.mdl", "models/sgg/starwars/weapons/w_obiwan_ep1_saber_hilt.mdl", "models/weapons/starwars/w_kr_hilt.mdl", }
wOS.DefaultSaberModels = { "models/sgg/starwars/weapons/w_anakin_ep2_saber_hilt.mdl", }

wOS.SaberGroupModels = {}
-- The saber models you want people of a particular ulx group to have access to. Same formatting as the above only this time it is wrapped in a key similar to the forms
-- You can give a group access to all sabers by doing this: wOS.SaberGroupModels[ "superadmin" ] = table.Copy( wOS.AllSaberModels )
wOS.SaberGroupModels[ "user" ] = { "models/sgg/starwars/weapons/w_anakin_ep2_saber_hilt.mdl", }
wOS.SaberGroupModels[ "superadmin" ] = table.Copy( wOS.AllSaberModels )

wOS.SaberTeamModels = {}
-- I think you get the idea of how to do this by now pal, you're a smart guy

end )