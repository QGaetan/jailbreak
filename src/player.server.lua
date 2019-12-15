--
-- @Project: Onset Minigames
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/Onset-minigames
--

Players = {}

-- TODO 
-- AddEvent("OnPlayerSteamAuth", function(playerid)
-- 	Players[playerid] = { steamId : GetPlayerSteamId(playerid) }
-- end)

-- Spawn player
AddEvent("OnPlayerJoin", function(playerid)

	if gameIsStart == false then
		local spawnLocation = Spawns[Random(1, #Spawns)]
		SetPlayerSpawnLocation(playerid, spawnLocation.x, spawnLocation.y, spawnLocation.z + 200, 90.0)
	--else
		--SetPlayerSpectate(playerid, true)
	end

	AddPlayerChatAll('<span color="#eeeeeeaa">' .. GetPlayerName(playerid) .. ' (' .. playerid .. ') joined the server</>')
	AddPlayerChatAll('<span color="#eeeeeeaa">There are ' .. GetPlayerCount() .. ' players on the server</>')
	AddPlayerChat(playerid, "Welcome to the server!")

end)

-- Tempo fix
-- AddEvent("OnPlayerSpawn", function(playerid)
-- 	local spawnLocation = Spawns[Random(1, #Spawns)]
-- 	SetPlayerSpawnLocation(playerid, spawnLocation.x, spawnLocation.y, spawnLocation.z + 200, 90.0)
-- 	print("spawn player")
-- end)

-- TODO : REMOVE ME
AddCommand("spawn", function(playerid)
	local spawnLocation = Spawns[Random(1, #Spawns)]
	SetPlayerLocation(playerid, spawnLocation.x, spawnLocation.y, spawnLocation.z + 100, 90.0)
end)

-- TODO : Forum config touche
AddCommand("spec", function(playerid)
	SetPlayerSpectate(playerid, true)
end)

-- TEST
-- CreateText3D("Ouvrir les portes", 25, -174119.0625, 84283.7109375, 1703.0708007813, 0.0, 0.0, 0.0)