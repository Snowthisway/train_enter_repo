local defaulttrain
local customtrain

RegisterCommand("train_enter_test", function()
    TeleportPlayer(vector3(-537.707397, -1277.735107, 26.901613)) --teleport player to train station

    LoadModel(`metrotrain`) --load and spawn default metrotrain
    defaulttrain = CreateMissionTrain(25, -533.902222, -1280.010132, 25.902273, true) --enterable, id from trains.xml
    SetTrainSpeed(defaulttrain, 0)  --stop train
    SetTrainCruiseSpeed(defaulttrain, 0) --stop train
    local carriage = GetTrainCarriage(customtrain, 1) --open all doors
    local doorCount = GetTrainDoorCount(defaulttrain)
    for doorIndex = 0, doorCount - 1 do
        SetTrainDoorOpenRatio(defaulttrain, doorIndex, 1.0) --open all doors
        SetTrainDoorOpenRatio(carriage, doorIndex, 1.0) --open all doors
    end

    LoadModel(`metrotrain2`) --load and spawn added train
    customtrain = CreateMissionTrain(26, -543.873535, -1276.425659, 26.063387, true) --not enterable, id from trains.xml
    SetTrainSpeed(customtrain, 0) --stop train
    SetTrainCruiseSpeed(customtrain, 0) --stop train
    carriage = GetTrainCarriage(customtrain, 1)
    doorCount = GetTrainDoorCount(customtrain)
    for doorIndex = 0, doorCount - 1 do
        SetTrainDoorOpenRatio(customtrain, doorIndex, 1.0) --open all doors
        SetTrainDoorOpenRatio(carriage, doorIndex, 1.0) --open all doors
    end
end, false)


AddEventHandler('onResourceStop', function(resourceName)
	if resourceName == GetCurrentResourceName() then
		if DoesEntityExist(defaulttrain) then
            DeleteEntity(defaulttrain)
        end
        if DoesEntityExist(customtrain) then
            DeleteEntity(customtrain)
        end
	end
end)