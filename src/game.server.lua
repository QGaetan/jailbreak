--
-- @Project: Onset Minigames
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/Onset-minigames
--

gameIsStart = false

Teams = {}

function ResetGame()

	Teams = {
		prisoner = {},
		guardian = {},
		spectator = {}
	}

	-- Doors
	DeleteDoors()
	CreateDoors()

	-- Clear weapon
	for _, playerid in pairs(GetAllPlayers()) do
		SetPlayerWeapon(playerid, 1, 0, true, 1, true)
		SetPlayerWeapon(playerid, 1, 0, true, 2, true)
		SetPlayerWeapon(playerid, 1, 0, true, 3, true)
	end

end

function SetRoles()

	-- Prisoner
	for _, playerId in pairs(GetAllPlayers()) do
		Teams.prisoner[playerId] = true
	end

	-- Guardian
	local notReady = true
	while notReady do
		for playerId, _ in ipairs(Teams.prisoner) do
			if 2 == Random(1, 2) then
				Teams.guardian[playerId] = true
				Teams.prisoner[playerId] = nil
			end

			if #Teams.guardian > #Teams.prisoner / 3 then
				notReady = false
				break
			end			
		end
	end

end

-- TODO : Forcer le nombre max de guardian
function StartGame() 

	SetRoles()

	-- Tp to spawn / jail
	for index, playerid in pairs(Teams.prisoner) do

		ChangeClothing(playerid, "prisoner")
		local jail = Jails[index]
		SetPlayerLocation(playerid, jail.x, jail.y, jail.z + 100)

		-- Give weapon
		local luck = Random(1, 20)
		if luck == 13 then
			AddPlayerChat(playerid, "Regarde tu a trouver une arme sous le matelas !")
			SetPlayerWeapon(playerid, 3, Random(5, 20), false, 2, false)
		else
			AddPlayerChat(playerid, luck)
		end

	end

	for index, playerid in pairs(Teams.guardian) do
		ChangeClothing(playerid, "guardian")
		SetPlayerLocation(playerid, Guardians.x, Guardians.y, Guardians.z + 100)
		SetPlayerWeapon(playerid, 8, 200, true, 1, true)
	end

	gameIsStart = true

end

function StopGame()

	gameIsStart = false

end

function GetPlayerIsGuardian(playerid)
	
	local result = false
	for _, id in pairs(Teams.guardian) do
		if id == playerid then
			result = true
			break
		end
	end
	return result

end

AddCommand("start", function(playerid) 

	ResetGame()
	StartGame()

end)

AddCommand("opendoor", function(playerid, name) 
	ToogleDoorsGroup(name)
end)
