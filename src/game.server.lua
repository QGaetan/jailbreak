--
-- @Project: Onset Minigames
-- @Author: Samuelds, Mageas, Hezam
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/Onset-minigames
--

gameIsStart = false

--
--
--
function ResetGame()

	ResetRoles()
	ResetDoors()

end

--
--
--
function StartGame() 

	SetRole()
	StartPlayersLocation()
	AddPlayerChatAll('<span color="#eeeeeeaa">Que le jeux commence !</>')

end

--
--
--
local CheckTimer = nil
function RunTimer()
	
	CheckTimer = CreateTimer(function(Roles)

		if GetPlayerCount() >= 3 and gameIsStart == false then
			gameIsStart = true
			ResetGame()
			StartGame()
		elseif (#Roles.prisoner == 0 or #Roles.guardian == 0) and gameIsStart == true then
			gameIsStart = false
			print("CheckEndGame : ", #Roles.prisoner, #Roles.guardian)
			AddPlayerChatAll('<span color="#eeeeeeaa">Fin du jeux, GG à tous !</>')
			EndGame()
		end

	end, 5000, Roles)

end

--
--
--
function EndGame()

	for _, playerId in pairs(GetAllPlayers()) do

		-- Remove All weapons
		SetPlayerWeapon(playerId, 1, 0, true, 1, true)
		SetPlayerWeapon(playerId, 1, 0, true, 2, true)
		SetPlayerWeapon(playerId, 1, 0, true, 3, true)

		-- Set Health
		if not IsPlayerDead(playerId) then
			SetPlayerHealth(playerId, 100)
			SpawnPlayer()
		else
			SetPlayerRespawnTime(playerId, 60)
		end

	end

end