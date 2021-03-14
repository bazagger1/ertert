--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-icefuse_saber_hitmarkers/lua/autorun/ifnsabermarkers/config/config.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

IFNSaberMarkers = {};
IFNSaberMarkers.Config = {};

IFNSaberMarkers.Config.hitSounds = {

    "hit_target/impact1.wav",
    "hit_target/impact2.wav",
    "hit_target/impact3.wav",
    "hit_target/impact4.wav",
    "hit_target/impact5.wav",
};

IFNSaberMarkers.Config.hitSoundLevel = 70;   // 0 - 180dB
IFNSaberMarkers.Config.hitSoundPitch = 100;  // 0 - 200% | Default = 100%
IFNSaberMarkers.Config.hitSoundVolume = 1;   // 0 - 1 | Default = 1
