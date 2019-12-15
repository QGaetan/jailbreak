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
	ChangeClothing(playerId, "prisoner")
end)

AddCommand("test", function(playerId, type)
	AddPlayerChat(playerId, "Need ChangeClothing for " .. playerId .. " to : " .. type)
	ChangeClothing(playerId, type)
end)

-- AddEvent("OnPlayerSpawn", function( player )
--     if PlayerData[player] == nil then
--         return
--     end
--     if PlayerData[player].clothing == nil then
--         return
--     end
--     if PlayerData[player].clothing[1] == nil then
--         return
--     end
--     playerhairscolor = getHairsColor(PlayerData[player].clothing[2])
--     CallRemoteEvent(player, "ClientChangeClothing", player, 0, PlayerData[player].clothing[1], playerhairscolor[1], playerhairscolor[2], playerhairscolor[3], playerhairscolor[4])
--     CallRemoteEvent(player, "ClientChangeClothing", player, 1, PlayerData[player].clothing[3], 0, 0, 0, 0)
--     CallRemoteEvent(player, "ClientChangeClothing", player, 4, PlayerData[player].clothing[4], 0, 0, 0, 0)
--     CallRemoteEvent(player, "ClientChangeClothing", player, 5, PlayerData[player].clothing[5], 0, 0, 0, 0)
-- end)

-- function ChangeOtherPlayerClothes(player, otherplayer)
--     if PlayerData[otherplayer] == nil then
--         return
--     end
--     if PlayerData[otherplayer].clothing == nil then
--         return
--     end
--     if PlayerData[otherplayer].clothing[1] == nil then
--         return
--     end
--     playerhairscolor = getHairsColor(PlayerData[otherplayer].clothing[2])
--     CallRemoteEvent(player, "ClientChangeClothing", otherplayer, 0, PlayerData[otherplayer].clothing[1], playerhairscolor[1], playerhairscolor[2], playerhairscolor[3], playerhairscolor[4])
--     CallRemoteEvent(player, "ClientChangeClothing", otherplayer, 1, PlayerData[otherplayer].clothing[3], 0, 0, 0, 0)
--     CallRemoteEvent(player, "ClientChangeClothing", otherplayer, 4, PlayerData[otherplayer].clothing[4], 0, 0, 0, 0)
--     CallRemoteEvent(player, "ClientChangeClothing", otherplayer, 5, PlayerData[otherplayer].clothing[5], 0, 0, 0, 0)
-- end
-- AddRemoteEvent("ServerChangeOtherPlayerClothes", ChangeOtherPlayerClothes)