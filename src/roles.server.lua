--
-- @Project: Onset Minigames
-- @Author: Samuelds, Mageas, Hezam
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/Onset-minigames
--

Roles = {
	prisoner = {},
	guardian = {},
}

function ResetRoles()
	Roles = {
		prisoner = {},
		guardian = {},
	}
end

--
--
--
function SetRole()

	-- Prisoner
	for _, playerId in pairs(GetAllPlayers()) do
		Roles.prisoner[playerId] = true
		Players[playerId].role = "prisoner"
	end

	-- Guardian
	local needGuardian = 0
	if #Roles.prisoner < 5 then
		needGuardian = 1
	else 
		for i = 1, #Roles.prisoner do
			if i % 3 == 0 then
				needGuardian = needGuardian + 1
			end
		end
	end

	local total = 1
	while total <= needGuardian do -- 1 => needGuardian
		for playerId, _ in ipairs(Roles.prisoner) do
			if Random(1, 4) == 2 and total <= needGuardian then
				Roles.guardian[playerId] = true
				Roles.prisoner[playerId] = nil
				Players[playerId].role = "guardian"
				print("Add " .. playerId .. " to guardian")
				total = total + 1
			end
		end
		print("Boucle !!!")
	end

end
