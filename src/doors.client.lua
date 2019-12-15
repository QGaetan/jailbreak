--
-- @Project: Onset Minigames
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/Onset-minigames
--

AddEvent("OnKeyPress", function(key)
    if key == "E" then
        local NearestControle = GetNearestControle()
		if NearestControle then
            CallRemoteEvent("controlInteract", NearestControle)
		end
	end
end)

function GetNearestControle()
	local x, y, z = GetPlayerLocation()
	for _, controle in pairs(Controles) do
		local dist = GetDistance3D(x, y, z, controle.x, controle.y, controle.z)
		if dist < 50.0 then
			return controle.group
		end
	end
	return false
end