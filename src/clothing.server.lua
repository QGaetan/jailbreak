--
-- @Project: Onset Minigames
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/Onset-minigames
--

function ChangeClothing(playerId, type) 
	--CallRemoteEvent(playerId, "ChangeClothing", playerid, type)
	for key, value in pairs(GetStreamedPlayersForPlayer(playerId)) do
		CallRemoteEvent(key, "ChangeClothing", playerId, type)
 	end
end

AddEvent("OnPlayerSpawn", function(playerId)
	--ChangeClothing(playerId, "prisoner")
end)

AddCommand("test", function(playerId, type)
	AddPlayerChat(playerId, "Need ChangeClothing for " .. playerId .. " to : " .. type)
	ChangeClothing(playerId, type)
end)