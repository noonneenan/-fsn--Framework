local lockers = {
	{x = 477.09661865234, y = -984.38543701172, z = 24.914745330811}
}

Citizen.CreateThread(function()
	while true do Citizen.Wait(0)
		for k,v in pairs(lockers) do
			if GetDistanceBetweenCoords(v.x,v.y,v.z,GetEntityCoords(GetPlayerPed(-1)), true) < 10 then
				DrawMarker(1,v.x,v.y,v.z-1,0,0,0,0,0,0,1.001,1.0001,0.4001,0,155,255,175,0,0,0,0)
				if GetDistanceBetweenCoords(v.x,v.y,v.z,GetEntityCoords(GetPlayerPed(-1)), true) < 1 then
					SetTextComponentFormat("STRING")
					AddTextComponentString("Press ~INPUT_PICKUP~ to access the locker")
					DisplayHelpTextFromStringLabel(0, 0, 1, -1)
				end
			end
		end
	end
end)