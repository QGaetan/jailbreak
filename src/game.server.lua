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

	Teams = {
		prisoner = {},
		guardian = {}
	}

	-- Doors
	DeleteDoors()
	CreateDoors()

	-- Clear weapon
	for _, playerId in pairs(GetAllPlayers()) do
		SetPlayerWeapon(playerId, 1, 0, true, 1, true)
		SetPlayerWeapon(playerId, 1, 0, true, 2, true)
		SetPlayerWeapon(playerId, 1, 0, true, 3, true)
	end

	gameIsStart = false

end

--
--
--
local CheckStartTimer = nil
function CheckStartGame()

	CheckStartTimer = CreateTimer(function()
		if GetPlayerCount() > 3 then
			ResetGame()
			StartGame()
		end
	end, 5000) -- 5s

end

--
--
--
function StartGame() 

	DestroyTimer(CheckEndTimer)
	SetRoles()
	StartPlayersLocation()
	CheckEndGame()
	gameIsStart = true

	AddPlayerChatAll('<span color="#eeeeeeaa">Que le jeux commence !</>')

end

--
--
--
local CheckEndTimer = nil
function CheckEndGame()
	
	CheckEndTimer = CreateTimer(function(Teams)
		print("CheckEndGame : ", #Teams.prisoner, #Teams.guardian)
		if #Teams.prisoner == 0 or #Teams.guardian == 0 then
			AddPlayerChatAll('<span color="#eeeeeeaa">Fin du jeux, GG à tous !</>')
			EndGame()
		end
	end, 5000, Teams) -- 5s

end

--
--
--
function EndGame()

	DestroyTimer(CheckEndTimer)
	gameIsStart = false
	
	for _, playerId in pairs(GetAllPlayers()) do
		if not IsPlayerDead(playerId) then
			SetPlayerHealth(playerId, 0)
		end

		Delay(10000, function()			
			SetPlayerRespawnTime(playerId, 10000)
			CheckStartGame()
		end)
	end

end