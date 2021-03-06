--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/wos-lightsaberaddon-icefuse/lua/wos/advswl/crafting/core/cl_net.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]


--[[-------------------------------------------------------------------
	Advanced Combat System Core Net Functions:
		Needed for the thing to work!
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
wOS.ItemList = wOS.ItemList or {}
wOS.SortedItemList = wOS.SortedItemList or {}
local PLAYER = LocalPlayer()
																																																																																		

net.Receive( "wOS.Crafting.SendPlayerData", function()

	local equipped_items = net.ReadTable()
	local sec_equipped_items = net.ReadTable()
	local localplayer = net.ReadBool()
	if localplayer then
		wOS.EquippedItems = table.Copy( equipped_items )
		wOS.SecEquippedItems = table.Copy( sec_equipped_items )
	else
		local ply = net.ReadEntity()
		ply.EquippedItems = table.Copy( equipped_items )
		ply.SecEquippedItems = table.Copy( sec_equipped_items )
	end

end )

local DefaultStandard = {
	Name = "Standard",
	Description = "Stock Item",
}

net.Receive( "wOS.Crafting.SendItems", function()

	local newtbl = net.ReadTable()

	wOS.ItemList = wOS.ItemList or {}
	table.Merge( wOS.ItemList, newtbl )

	wOS.SortedItemList = wOS.SortedItemList or {}
	
	for i=1, 7 do
		if wOS.SortedItemList[ i ] then continue end
		wOS.SortedItemList[ i ] = {}
		wOS.SortedItemList[ i ][ "Standard" ] = table.Copy( DefaultStandard )
	end
	
	for i=8, 9 do
		if wOS.SortedItemList[ i ] then continue end
		wOS.SortedItemList[ i ] = {}	
	end
	
	for _, data in pairs( newtbl ) do
		if not wOS.SortedItemList[ data.Type ] then wOS.SortedItemList[ data.Type ] = {} end
		if data.Type == WOSTYPE.BLUEPRINT or data.Type == WOSTYPE.RAWMATERIAL then
			wOS.SortedItemList[ data.Type ][ data.Name ] = data
		else
			if not wOS.SortedItemList[ data.Type ][ "Standard" ] then wOS.SortedItemList[ data.Type ][ "Standard" ] = table.Copy( DefaultStandard ) end
			wOS.SortedItemList[ data.Type ][ data.Name ] = data
		end
	end
	
end )

net.Receive( "wOS.Crafting.RefreshWeapon", function()

	local wep = net.ReadEntity()
	if not IsValid( wep ) then return end
	wep.CustomSettings = net.ReadTable()

end )

net.Receive( "wOS.Crafting.RefreshWeaponDual", function()

	local wep = net.ReadEntity()
	if not IsValid( wep ) then return end
	wep.CustomSettings = net.ReadTable()
	wep.SecCustomSettings = net.ReadTable()

end )

net.Receive( "wOS.Crafting.PreviewChange", function( len, ply )
	
	local second_saber = net.ReadBool()
	if !second_saber then
		wOS.PersonalSaber = net.ReadTable()
	else
		wOS.SecPersonalSaber = net.ReadTable()
	end
	wOS:BuildCraftingSaber()
	
end )

net.Receive( "wOS.Crafting.RefreshCraftMenu", function( len, ply )
	wOS.SaberInventory = net.ReadTable()
	wOS:RebuildCraftingMenus() 
end )

net.Receive( "wOS.Crafting.ViewInventory", function()

	wOS.SaberInventory = net.ReadTable()
	wOS.RawMaterials = net.ReadTable()
	wOS:ViewInventory()
	
end )

net.Receive( "wOS.Crafting.UpdateInventory", function()

	wOS.SaberInventory = net.ReadTable()
	wOS:BuildItemsOnPage()
	
end )

net.Receive( "wOS.Crafting.UpdateBlueprints", function()

	wOS.Blueprints = net.ReadTable()
	
end )

net.Receive( "wOS.Crafting.UpdateMaterials", function()

	wOS.RawMaterials = net.ReadTable()
	
end )


net.Receive( "wOS.Crafting.OpenCraftingMenu", function()

	wOS.EquippedItems = net.ReadTable()
	wOS.SecEquippedItems  = net.ReadTable()
	wOS.PersonalSaber = net.ReadTable()
	wOS.SaberInventory = net.ReadTable()
	wOS.SaberMiscSlots = net.ReadTable()
	wOS:OpenSaberCrafting()
	
end )