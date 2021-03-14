--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/config/sh_serverwos.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

wOS = wOS or {}

--Should the player move in the direction of the animation when attacking?
--VERY VERY ( VERY )IMPORTANT NOTE: I highly recommend you disable this if your tick rate is BELOW 33. YOU WILL SEE STUTTERING OTHERWISE
wOS.EnableLunge = false

--Enable this to only draw lightsaber traces when you are swinging
--This adds a huge buff to performance but will remove the ability to make scorch marks/damage traces when idle/running
wOS.MinimalLightsabers = true

--Determines whether or not the list in the toolgun's menu shouldn't be constructed based on the hilt restrictions
--Enable this if you do not distribute tool guns, as it will just show all hilts available.
wOS.LegacyToolgun = false

--Should we stop non-admins from changing their saber settings through the rb556 console commands?
--This will not affect forced Lightsaber properties. 
--This is useful for BASIC crafting benches that do not utilize the forced properties
--or restricted hilts in the tool gun ( sh_hiltwos.lua settings )
wOS.RestrictConcommands = true

--Enable this if you want to remove the hot key system entirely and use a "Force Select" menu similar to the Form Select menu
--Enabling this will allow players to have more than 9 force abilities equipped to a saber, but remove the hotkey system
wOS.ForceSelectMenu = true

--Enabling this will stop the force icons from rendering.
--Useful for servers with 3D2D HUDs, as it will save clients some frames.
--This will also remove the little icon in the Force Select menu. 
wOS.DisableForceIcons = false

--The frequency ( in seconds ) that the wiltOS Advanced Saber Combat advertisement will print in chat.
--To disable advertisements, just set this to false
--I won't get angry if you disable it, promise
wOS.AdvertTime = false

--This is used to enable the realistic camera on first person lightsabers. 
--Players will be locked into their model's eyes and the camera will be limited by their head movements
--Good for RP purposes, but hard aim and use force abiltiies with
wOS.AlwaysFirstPerson = false

--If your server is using Zhrom's Starwars Prop Pack, this will automatically mount them to the toolgun/crafting benches
--YOU AND YOUR SERVER WILL NEED THIS ADDON!
-- http://steamcommunity.com/sharedfiles/filedetails/?id=740395760&searchtext=Zhrom
wOS.EnableZhromExtension = false

--If your server is using the CloneWars Adventure pack, this will automatically mount them to the toolgun/crafting benches
--YOU AND YOUR SERVER WILL NEED THE CLONE WAR PACK!
wOS.EnableCloneAdventures = false

wOS.HiltDrawDistance = 1024

-- Sets render distance for lightsaber blade and partical effects.
wOS.LightsaberDrawDistance = 1024

wOS.LightsaberGlowDistance = 512

-- Set this value to increase lightsaber weight WARNING!!!! Do not go above 8 "use whole numbers" this CAN cause extreme lag!
wOS.gTrailLength = 4