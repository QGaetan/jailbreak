local pid = GetPlayerId()

function OnKeyPress(key)
	AddPlayerChat(key)
	if key == "&" then
		PlayAnimation(pid,"SMOKING")
	end
end
AddEvent("OnKeyPress", OnKeyPress)

function PlayAnimation(playerid,animationid)
    
    SetPlayerAnimation(playerid, animationid)

end
