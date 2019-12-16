--
-- @Project: Onset Minigames
-- @Author: Samuelds, Mageas, Hezam
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/Onset-minigames
--

Teams = {
	prisoner = {},
	guardian = {},
}

--
--
--
function SetTeam()

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
