

-- Doctoor Room created by Ksatria Batang ganda
Config.DoorList['RS SS-Doctoor Room'] = {
    locked = true,
    fixText = false,
    doorRate = 1.0,
    objYaw = 119.99991607666,
    objCoords = vec3(1826.248901, 3670.210938, 34.307495),
    authorizedJobs = { ['ambulance'] = 0 },
    distance = 3,
    doorType = 'door',
    doorLabel = 'Doctor Room',
    objName = 1080437963,
}

-- Resepsionis created by Ksatria Batang ganda
Config.DoorList['RS SS-Resepsionis'] = {
    locked = true,
    fixText = false,
    doorRate = 1.0,
    objYaw = 29.999940872192,
    objCoords = vec3(1839.560059, 3684.486084, 34.295425),
    authorizedJobs = { ['ambulance'] = 0 },
    distance = 3,
    doorType = 'door',
    doorLabel = 'Resepsionis',
    objName = 1080437963,
}

-- EMS Area created by Ksatria Batang ganda
Config.DoorList['RS SS-EMS Area'] = {
    doorRate = 1.0,
    locked = true,
    authorizedJobs = { ['ambulance'] = 0 },
    distance = 3,
    doorType = 'double',
    doors = {
        {objName = 1080437963, objYaw = 119.99991607666, objCoords = vec3(1829.987305, 3683.277832, 34.307182)},
        {objName = 1080437963, objYaw = 299.99996948242, objCoords = vec3(1831.278564, 3681.049072, 34.307182)}
    },
    doorLabel = 'EMS Area',
}