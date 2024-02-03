RegisterCommand('loadped', function(source, args)
    local model = args[1]
    local hash = GetHashKey(model)
    local player = PlayerId()
    RequestModel(hash)
    while not HasModelLoaded(hash) do 
        RequestModel(hash)
        Wait(100)
    end
    SetPlayerModel(player, hash)
    SetPedDefaultComponentVariation(tempPed)
    ClearAllPedProps(tempPed)
    ClearPedDecorations(tempPed)
    ClearPedFacialDecorations(tempPed)
    SetPedComponentVariation(tempPed, 0, 0, 0, 0)
    Wait(200)
    SetPedComponentVariation(tempPed, 0, 0, 1, 0)
    SetModelAsNoLongerNeeded(hash)
end)
