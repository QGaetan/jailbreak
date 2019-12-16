--
-- @Project: Onset Minigames
-- @Author: Samuelds, Mageas, Hezam
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/Onset-minigames
--

gameIsStart = false
Teams = {
	prisoner = {},
	guardian = {}
}

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
function SetRoles()

	-- Prisoner
	for _, playerId in pairs(GetAllPlayers()) do
		Teams.prisoner[playerId] = true
		Players[playerId].role = "prisoner"
	end

	-- Guardian
	local needGuardian = 0
	if #Teams.prisoner < 5 then
		needGuardian = 1
	else 
		for i = 1, #Teams.prisoner do
			if i % 3 == 0 then
				needGuardian = needGuardian + 1
			end
		end
	end

	local total = 1
	while total <= needGuardian do -- 1 => needGuardian
		for playerId, _ in ipairs(Teams.prisoner) do
			if Random(1, 4) == 2 and total <= needGuardian then
				Teams.guardian[playerId] = true
				Teams.prisoner[playerId] = nil
				Players[playerId].role = "guardian"
				print("Add " .. playerId .. " to guardian")
				total = total + 1
			end
		end
		print("Boucle !!!")
	end

end

--
-- Spawn jail or administration
--
function StartPlayersLocation()

	local jail = 1
	for _, playerId in pairs(GetAllPlayers()) do
		
		if Players[playerId].role then

			SetPlayerHealth(playerId, 100)
			if Players[playerId].role == "prisoner" then

				ChangeClothing(playerId, "prisoner")
				local jailLocation = Jails[jail]
				--SetPlayerLocation(playerId, jailLocation.x, jailLocation.y, jailLocation.z + 100)

				-- Give weapon (Random)
				local luck = Random(1, 20)
				if luck == 13 then
					AddPlayerChat(playerId, "Regarde tu a trouver une arme sous le matelas !")
					SetPlayerWeapon(playerId, 3, Random(5, 20), false, 2, false)
				end

				jail = jail + 1

			elseif Players[playerId].role == "guardian" then

				ChangeClothing(playerId, "guardian")
				--SetPlayerLocation(playerId, Guardians.x, Guardians.y, Guardians.z + 100)
				SetPlayerWeapon(playerId, 8, 200, true, 1, true)

			end

		end
	end

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

AddCommand("start", function(playerId) 

	ResetGame()
	StartGame()

end)

AddCommand("end", function(playerId) 

	EndGame()

end)


AddCommand("opendoor", function(playerId, name) 
	ToogleDoorsGroup(name)
end)

AddCommand("kill", function(playerId) 
	SetPlayerHealth(playerId, 0)
end)
