function TeleportPlayer(coords)
    local playerped = PlayerPedId()
    SetEntityCoords(playerped, coords.x, coords.y, coords.z, false, false, false, false)
    FreezeEntityPosition(playerped, true)
    while not HasCollisionLoadedAroundEntity(playerped) do
        Wait(0)
    end
    FreezeEntityPosition(playerped, false)
end

function LoadModel(model)
    RequestModel(model)
    repeat
        Wait(0)
    until (HasModelLoaded(model) == 1)
end