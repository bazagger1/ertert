--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/config/sh_swlwos.lua
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

hook.Add( "PostGamemodeLoaded", "wOS.AddJobsForForms", function()

-- This is where you configure the group that has access to the form, and which stance they will be using.
-- FORMAT: wOS.Forms[ FORM ] = { [ ULXGROUP ] = { STANCENUMBER1, STANCENUMBER2, STANCENUMBER3 } }
-- STANCENUMBER is a number from 1-3
-- And follow through
-- PLEASE NOTE THAT IF A GROUP DOES NOT HAVE A FORM SPECIFIED, THEY WILL JUST USE THE DEFAULT GMOD ANIMATIONS!


--This is where you'd select the usergroups that should have access to ALL forms and stances!
wOS.AllAccessForms = {
-----------------------------------------------
"c_e_o",

"e_d",

"d_o_i",
"d_o_p",
"d_o_l", 
"d_o_a",

"i_s",
"l_s",
"p_s",
"a_s",

"advisor",

"developer", 
"division_leader",
"sector_lead",

"head_administrator", 
"elite_administrator",
"administrator", 
"senior_moderator",
"moderator", 
"trial_mod",

"champion", 
"legend",
"loyal", 
"supporter",
"patron", 
"subscriber",

"user", 
"member"
}

end )