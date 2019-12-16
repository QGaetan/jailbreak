--
-- @Project: Onset Minigames
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/Onset-minigames
--

function ChangeClothing(playerId, roleName)

	print(playerId, roleName)
	Players[playerId].clothing = {
		bodyNumber = Random(1, 5),
		bodyColorNumber = Random(1, 10),
		hairNumber = Random(1, 4),
		hairColorNumber = Random(1, 16),
		role = roleName,
	}

	CallRemoteEvent(playerId, "ChangeClothing", playerId, Players[playerId].clothing)
	for _, otherPlayerId in pairs(GetAllPlayers()) do
		CallRemoteEvent(otherPlayerId, "ChangeClothing", playerId, Players[playerId].clothing)
 	end

end

function ChangeOtherPlayerClothes(playerId)

	for _, otherPlayerId in pairs(GetAllPlayers()) do
		CallRemoteEvent(playerId, "ChangeClothing", otherPlayerId, Players[otherPlayerId].clothing)
 	end

end

AddEvent("OnPlayerSpawn", function(playerId)

	ChangeClothing(playerId, "prisoner")
	ChangeOtherPlayerClothes(playerId)
	
end)


AddCommand("role", function(playerId, roleName) 
	ChangeClothing(playerId, roleName)
	Roles[roleName][playerId] = true
end)