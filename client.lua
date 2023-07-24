local toggle = false

RegisterCommand("admin", function(source,args,raw)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if toggle == false then
        SetEntityAlpha(ped, 250, false)
        SetEntityAlpha(vehicle, 250, false)
        SetEntityVisible(ped,false)
        SetEntityVisible(vehicle,false)
        SetEntityInvincible(ped, true)
        SetEveryoneIgnorePlayer(pPed, true)
			                SetPoliceIgnorePlayer(pPed, true)
        toggle = true
    else
        ResetEntityAlpha(ped)
        ResetEntityAlpha(vehicle)
        SetEntityVisible(ped,true)
        SetEntityVisible(vehicle,true)
        SetEntityInvincible(ped, false)
        SetEveryoneIgnorePlayer(pPed, false)
			                SetPoliceIgnorePlayer(pPed, false)
        toggle = false
    end
end)
