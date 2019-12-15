--
-- @Project: Onset Minigames
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/Onset-minigames
--

Players = {}


-- Get steamId
AddEvent("OnPlayerSteamAuth", function(playerId)
	Players[playerId].steamId = GetPlayerSteamId(playerId)
end)

-- Spawn player
AddEvent("OnPlayerJoin", function(playerid)

	local spawnLocation = Spawns[Random(1, #Spawns)]
	SetPlayerSpawnLocation(playerid, spawnLocation.x, spawnLocation.y, spawnLocation.z + 200, 90.0)

	-- Init player
	Players[playerid] = {}

	AddPlayerChatAll('<span color="#eeeeeeaa">' .. GetPlayerName(playerid) .. ' (' .. playerid .. ') joined the server</>')

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