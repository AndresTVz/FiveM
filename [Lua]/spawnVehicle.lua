function spawnVehicle(vehicle)

    local player = PlayerPedId()
    local _sleep = 300

    local x,y,z = table.unpack(GetEntityCoords(player))
    local vehicleHash = GetHashKey(vehicle)

    RequestModel(vehicleHash)

    Citizen.CreateThread(function()

        local waiting = 0
        while not HasModelLoaded(vehicleHash) do

            Citizen.Wait(_sleep)
            if waiting >= 1000 then
                return addNotification("~r~This car does not exist.")
            end
            waiting = waiting + 100
        end

        if IsPedInAnyVehicle(player, false) then
            local car = GetVehiclePedIsIn( player, false )
            if GetPedInVehicleSeat( car, -1 ) == player then
                SetEntityAsMissionEntity( car, true, true )
                DeleteVehicle( car )
            end
        end

        addNotification(GetLabelText(vehicle).. "~n~ Spawned")
        vehicle = CreateVehicle(vehicleHash, x, y, z, GetEntityHeading(player), 1, 0)
        SetPedIntoVehicle(player, vehicle, -1)

        return vehicle

    end)

end
