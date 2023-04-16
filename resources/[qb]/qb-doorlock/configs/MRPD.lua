

-- Garage Door 1 created by Ksatria Batang ganda
Config.DoorList['MRPD-Garage Door 1'] = {
    locked = true,
    fixText = false,
    doorRate = 1.0,
    objYaw = 0.0,
    objCoords = vec3(433.815125, -999.920471, 26.115582),
    authorizedJobs = { ['police'] = 0 },
    distance = 5,
    doorType = 'garage',
    doorLabel = 'Garage Door',
    objName = -1195127879,
}

-- Garage Door 2 created by Ksatria Batang ganda
Config.DoorList['MRPD-Garage Door 2'] = {
    locked = true,
    fixText = false,
    doorRate = 1.0,
    objYaw = 0.0,
    objCoords = vec3(449.897766, -999.903198, 26.114243),
    authorizedJobs = { ['police'] = 0 },
    distance = 5,
    doorType = 'garage',
    doorLabel = 'Garage Door',
    objName = -1195127879,
}

-- Garage Door 3 created by Ksatria Batang ganda
Config.DoorList['MRPD-Garage Door 3'] = {
    locked = true,
    fixText = false,
    doorRate = 1.0,
    objYaw = 90.000022888184,
    objCoords = vec3(488.767578, -1021.413147, 28.898113),
    authorizedJobs = { ['police'] = 0 },
    distance = 5,
    doorType = 'garage',
    doorLabel = 'Garage Door',
    objName = -1195127879,
}

-- Basement Door 1 created by Ksatria Batang ganda
Config.DoorList['MRPD-Basement Door 1'] = {
    doorType = 'double',
    locked = true,
    doors = {
        {objName = 1255964982, objYaw = 90.000022888184, objCoords = vec3(463.187622, -988.916992, 25.617481)},
        {objName = 1255964982, objYaw = 270.00003051758, objCoords = vec3(463.187622, -991.515686, 25.617481)}
    },
    distance = 3,
    doorRate = 1.0,
    doorLabel = 'Basement Door',
    authorizedJobs = { ['police'] = 0 },
}

-- Basement Door 2 created by Ksatria Batang ganda
Config.DoorList['MRPD-Basement Door 2'] = {
    doorType = 'double',
    locked = true,
    doors = {
        {objName = 1255964982, objYaw = 1.0017911336035e-05, objCoords = vec3(474.457062, -993.203369, 25.616543)},
        {objName = 1255964982, objYaw = 180.00001525879, objCoords = vec3(471.858215, -993.203369, 25.616543)}
    },
    distance = 3,
    doorRate = 1.0,
    doorLabel = 'Basement Door',
    authorizedJobs = { ['police'] = 0 },
}

-- Medical Room 1 created by Ksatria Batang ganda
Config.DoorList['MRPD-Medical Room 1'] = {
    doorType = 'double',
    locked = true,
    doors = {
        {objName = 1438783233, objYaw = 360.0, objCoords = vec3(448.008026, -978.650269, 25.611851)},
        {objName = 1438783233, objYaw = 179.99998474121, objCoords = vec3(450.609711, -978.650269, 25.611851)}
    },
    distance = 3,
    doorRate = 1.0,
    doorLabel = 'Medical Room',
    authorizedJobs = { ['police'] = 0 },
}

-- Medical Room 2 created by Ksatria Batang ganda
Config.DoorList['MRPD-Medical Room 2'] = {
    doorType = 'double',
    locked = true,
    doors = {
        {objName = 1438783233, objYaw = 270.0, objCoords = vec3(463.068481, -978.678467, 25.612671)},
        {objName = 1438783233, objYaw = 89.999977111816, objCoords = vec3(463.068481, -981.278259, 25.612671)}
    },
    distance = 3,
    doorRate = 1.0,
    doorLabel = 'Medical Room',
    authorizedJobs = { ['police'] = 0 },
}

-- Mugshot created by Ksatria Batang ganda
Config.DoorList['MRPD-Mugshot'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(481.863739, -993.973022, 25.615551),
    objYaw = 89.999961853027,
    distance = 3,
    objName = 1255964982,
    doorLabel = 'Mugshot',
    doorRate = 1.0,
}

-- Forensik created by Ksatria Batang ganda
Config.DoorList['MRPD-Forensik'] = {
    doorType = 'doublesliding',
    locked = true,
    doors = {
        {objName = -1572101598, objYaw = 0.00022272375645116, objCoords = vec3(477.975372, -1004.605591, 24.471722)},
        {objName = 161378502, objYaw = 359.99923706055, objCoords = vec3(480.575317, -1004.605591, 24.471722)}
    },
    distance = 3,
    doorRate = 1.0,
    doorLabel = 'Forensik',
    authorizedJobs = { ['police'] = 0 },
}

-- Cell A1 created by Ksatria Batang ganda
Config.DoorList['MRPD-Cell A1'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(484.083130, -1006.736145, 30.612476),
    objYaw = 89.999961853027,
    distance = 3,
    objName = -1036090959,
    doorLabel = 'Cell',
    doorRate = 1.0,
}

-- Cell A2 created by Ksatria Batang ganda
Config.DoorList['MRPD-Cell A2'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(484.083069, -1010.842529, 30.612476),
    objYaw = 89.999961853027,
    distance = 3,
    objName = -1036090959,
    doorLabel = 'Cell',
    doorRate = 1.0,
}

-- Cell A3 created by Ksatria Batang ganda
Config.DoorList['MRPD-Cell A3'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(484.083069, -1014.943298, 30.612476),
    objYaw = 89.999961853027,
    distance = 3,
    objName = -1036090959,
    doorLabel = 'Cell',
    doorRate = 1.0,
}

-- Cell A4 created by Ksatria Batang ganda
Config.DoorList['MRPD-Cell A4'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(480.817352, -1006.746033, 30.612476),
    objYaw = 89.999961853027,
    distance = 3,
    objName = -1036090959,
    doorLabel = 'Cell',
    doorRate = 1.0,
}

-- Cell A5 created by Ksatria Batang ganda
Config.DoorList['MRPD-Cell A5'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(480.817291, -1010.842468, 30.612476),
    objYaw = 89.999961853027,
    distance = 3,
    objName = -1036090959,
    doorLabel = 'Cell',
    doorRate = 1.0,
}

-- Cell A6 created by Ksatria Batang ganda
Config.DoorList['MRPD-Cell A6'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(480.817291, -1014.956787, 30.612476),
    objYaw = 89.999961853027,
    distance = 3,
    objName = -1036090959,
    doorLabel = 'Cell',
    doorRate = 1.0,
}

-- Cell B1 created by Ksatria Batang ganda
Config.DoorList['MRPD-Cell B1'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(469.044464, -986.926697, 30.612476),
    objYaw = 1.0017911336035e-05,
    distance = 3,
    objName = -1036090959,
    doorLabel = 'Cell',
    doorRate = 1.0,
}

-- Cell B2 created by Ksatria Batang ganda
Config.DoorList['MRPD-Cell B2'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(464.938080, -986.926636, 30.612476),
    objYaw = 1.0017911336035e-05,
    distance = 3,
    objName = -1036090959,
    doorLabel = 'Cell',
    doorRate = 1.0,
}

-- Cell B3 created by Ksatria Batang ganda
Config.DoorList['MRPD-Cell B3'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(460.837311, -986.926636, 30.612476),
    objYaw = 1.0017911336035e-05,
    distance = 3,
    objName = -1036090959,
    doorLabel = 'Cell',
    doorRate = 1.0,
}

-- Cell B4 created by Ksatria Batang ganda
Config.DoorList['MRPD-Cell B4'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(469.034607, -983.660889, 30.612476),
    objYaw = 1.0017911336035e-05,
    distance = 3,
    objName = -1036090959,
    doorLabel = 'Cell',
    doorRate = 1.0,
}

-- Cell B5 created by Ksatria Batang ganda
Config.DoorList['MRPD-Cell B5'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(464.938141, -983.660828, 30.612476),
    objYaw = 1.0017911336035e-05,
    distance = 3,
    objName = -1036090959,
    doorLabel = 'Cell',
    doorRate = 1.0,
}

-- Cell B6 created by Ksatria Batang ganda
Config.DoorList['MRPD-Cell B6'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(460.823853, -983.660828, 30.612476),
    objYaw = 1.0017911336035e-05,
    distance = 3,
    objName = -1036090959,
    doorLabel = 'Cell',
    doorRate = 1.0,
}

-- Rear Door 1 created by Ksatria Batang ganda
Config.DoorList['MRPD-Rear Door 1'] = {
    doorType = 'double',
    locked = true,
    doors = {
        {objName = -1036090959, objYaw = 180.00001525879, objCoords = vec3(479.690887, -979.453003, 28.143826)},
        {objName = -1036090959, objYaw = 0.0, objCoords = vec3(477.091370, -979.453003, 28.143826)}
    },
    distance = 3,
    doorRate = 1.0,
    doorLabel = 'Rear Door',
    authorizedJobs = { ['police'] = 0 },
}

-- Evidance created by Ksatria Batang ganda
Config.DoorList['MRPD-Evidance'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(468.018616, -998.500244, 30.611513),
    objYaw = 89.999977111816,
    distance = 3,
    objName = 749848321,
    doorLabel = 'Evidance',
    doorRate = 1.0,
}

-- Main Door created by Ksatria Batang ganda
Config.DoorList['MRPD-Main Door'] = {
    doorType = 'double',
    locked = true,
    doors = {
        {objName = -1481015543, objYaw = 89.999977111816, objCoords = vec3(449.522369, -980.361023, 30.874449)},
        {objName = 952639784, objYaw = 89.999977111816, objCoords = vec3(449.522369, -982.958435, 30.874449)}
    },
    distance = 3,
    doorRate = 1.0,
    doorLabel = 'Main Door',
    authorizedJobs = { ['police'] = 0 },
}

-- Press Room created by Ksatria Batang ganda
Config.DoorList['MRPD-Press Room'] = {
    doorType = 'double',
    locked = true,
    doors = {
        {objName = 952639784, objYaw = 180.00001525879, objCoords = vec3(437.124390, -989.491760, 30.873428)},
        {objName = -1481015543, objYaw = 179.99998474121, objCoords = vec3(434.526550, -989.491760, 30.873428)}
    },
    distance = 3,
    doorRate = 1.0,
    doorLabel = 'Press Room',
    authorizedJobs = { ['police'] = 0 },
}

-- Press Room - Staff created by Ksatria Batang ganda
Config.DoorList['MRPD-Press Room - Staff'] = {
    doorType = 'door',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(437.510040, -997.986633, 30.873428),
    objYaw = 90.0,
    distance = 3,
    objName = -824920418,
    doorLabel = 'Press Room',
    doorRate = 1.0,
}

-- Pintu Samping created by Ksatria Batang ganda
Config.DoorList['MRPD-Pintu Samping'] = {
    doorType = 'double',
    locked = true,
    doors = {
        {objName = 1847320387, objYaw = 360.0, objCoords = vec3(442.750885, -998.583801, 31.118603)},
        {objName = -688443112, objYaw = 0.0, objCoords = vec3(440.114258, -998.584351, 31.118141)}
    },
    distance = 3,
    doorRate = 1.0,
    doorLabel = 'Pintu Samping',
    authorizedJobs = { ['police'] = 0 },
}

-- Pintu Samping 2  created by Ksatria Batang ganda
Config.DoorList['MRPD-Pintu Samping 2 '] = {
    doorType = 'double',
    locked = true,
    doors = {
        {objName = 952639784, objYaw = 270.00003051758, objCoords = vec3(445.918518, -992.436646, 30.874199)},
        {objName = -1481015543, objYaw = 270.00003051758, objCoords = vec3(445.918518, -995.031250, 30.874199)}
    },
    distance = 3,
    doorRate = 1.0,
    doorLabel = 'Pintu Samping ',
    authorizedJobs = { ['police'] = 0 },
}

-- Main Parking 1 created by Ksatria Batang ganda
Config.DoorList['MRPD-Main Parking 1'] = {
    doorType = 'garage',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(411.723907, -1025.198975, 28.449730),
    objYaw = 89.999969482422,
    distance = 5,
    objName = -115255438,
    doorLabel = 'Main Parking',
    doorRate = 1.0,
}

-- Main Parking 2 created by Ksatria Batang ganda
Config.DoorList['MRPD-Main Parking 2'] = {
    doorType = 'garage',
    locked = true,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(411.723907, -1025.198975, 28.449730),
    objYaw = 90.000007629395,
    distance = 5,
    objName = -1489554537,
    doorLabel = 'Main Parking',
    doorRate = 1.0,
}

-- Captain Room created by Ksatria Batang ganda
Config.DoorList['MRPD-Captain Room'] = {
    doors = {
        {objName = -1481015543, objYaw = 270.0, objCoords = vec3(447.364716, -976.973450, 35.212143)},
        {objName = 952639784, objYaw = 269.99996948242, objCoords = vec3(447.364716, -974.373840, 35.212143)}
    },
    authorizedJobs = { ['police'] = 0 },
    locked = true,
    doorLabel = 'Captain Room',
    distance = 3,
    doorRate = 1.0,
    doorType = 'double',
}

-- Hall 1 created by Ksatria Batang ganda
Config.DoorList['MRPD-Hall 1'] = {
    doors = {
        {objName = 952639784, objYaw = 89.999977111816, objCoords = vec3(455.546631, -988.383118, 35.212101)},
        {objName = -1481015543, objYaw = 89.999977111816, objCoords = vec3(455.546631, -985.783264, 35.212101)}
    },
    authorizedJobs = { ['police'] = 0 },
    locked = true,
    doorLabel = 'Hall',
    distance = 3,
    doorRate = 1.0,
    doorType = 'double',
}

-- Hall 2 created by Ksatria Batang ganda
Config.DoorList['MRPD-Hall 2'] = {
    doors = {
        {objName = 952639784, objYaw = 270.0, objCoords = vec3(470.489685, -998.117920, 35.206951)},
        {objName = -1481015543, objYaw = 270.00003051758, objCoords = vec3(470.490570, -1000.717712, 35.206951)}
    },
    authorizedJobs = { ['police'] = 0 },
    locked = true,
    doorLabel = 'Hall',
    distance = 3,
    doorRate = 1.0,
    doorType = 'double',
}

-- Storage created by Ksatria Batang ganda
Config.DoorList['MRPD-Storage'] = {
    fixText = false,
    locked = true,
    doorRate = 1.0,
    distance = 3,
    objName = -1036090959,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(467.507172, -994.437988, 35.212627),
    doorType = 'door',
    doorLabel = 'Storage',
    objYaw = 134.99995422363,
}

-- Armoury created by Ksatria Batang ganda
Config.DoorList['MRPD-Armoury'] = {
    fixText = false,
    locked = true,
    doorRate = 1.0,
    distance = 3,
    objName = -1036090959,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(458.398224, -992.107056, 35.212627),
    doorType = 'door',
    doorLabel = 'Armoury',
    objYaw = 315.0,
}

-- Interogation 1 created by Ksatria Batang ganda
Config.DoorList['MRPD-Interogation 1'] = {
    fixText = false,
    locked = true,
    doorRate = 1.0,
    distance = 3,
    objName = -1481015543,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(477.647491, -996.258484, 35.212360),
    doorType = 'door',
    doorLabel = 'Interogation',
    objYaw = 269.99996948242,
}

-- Interogation 2 created by Ksatria Batang ganda
Config.DoorList['MRPD-Interogation 2'] = {
    fixText = false,
    locked = true,
    doorRate = 1.0,
    distance = 3,
    objName = -824920418,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(477.647491, -988.151062, 35.212360),
    doorType = 'door',
    doorLabel = 'Interogation',
    objYaw = 269.99996948242,
}

-- Interogation 3 created by Ksatria Batang ganda
Config.DoorList['MRPD-Interogation 3'] = {
    fixText = false,
    locked = true,
    doorRate = 1.0,
    distance = 3,
    objName = -1481015543,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(477.643097, -987.182007, 35.211697),
    doorType = 'door',
    doorLabel = 'Interogation',
    objYaw = 269.99996948242,
}

-- Interogation 4 created by Ksatria Batang ganda
Config.DoorList['MRPD-Interogation 4'] = {
    fixText = false,
    locked = true,
    doorRate = 1.0,
    distance = 3,
    objName = -824920418,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(477.643829, -979.079346, 35.209061),
    doorType = 'door',
    doorLabel = 'Interogation',
    objYaw = 269.99996948242,
}

-- Interogation 5 created by Ksatria Batang ganda
Config.DoorList['MRPD-Interogation 5'] = {
    fixText = false,
    locked = true,
    doorRate = 1.0,
    distance = 3,
    objName = -1481015543,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(482.664459, -996.257568, 35.214233),
    doorType = 'door',
    doorLabel = 'Interogation',
    objYaw = 270.00003051758,
}

-- Interogation 6 created by Ksatria Batang ganda
Config.DoorList['MRPD-Interogation 6'] = {
    fixText = false,
    locked = true,
    doorRate = 1.0,
    distance = 3,
    objName = -824920418,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(482.664459, -988.146362, 35.214233),
    doorType = 'door',
    doorLabel = 'Interogation',
    objYaw = 270.00003051758,
}

-- Interogation 7 created by Ksatria Batang ganda
Config.DoorList['MRPD-Interogation 7'] = {
    fixText = false,
    locked = true,
    doorRate = 1.0,
    distance = 3,
    objName = -1481015543,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(482.660065, -987.188049, 35.213570),
    doorType = 'door',
    doorLabel = 'Interogation',
    objYaw = 270.00003051758,
}

-- Interogation 8 created by Ksatria Batang ganda
Config.DoorList['MRPD-Interogation 8'] = {
    fixText = false,
    locked = true,
    doorRate = 1.0,
    distance = 3,
    objName = -824920418,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(482.660797, -979.072021, 35.210934),
    doorType = 'door',
    doorLabel = 'Interogation',
    objYaw = 270.00003051758,
}

-- Helipad Stair 1 created by Ksatria Batang ganda
Config.DoorList['MRPD-Helipad Stair 1'] = {
    fixText = false,
    locked = true,
    doorRate = 1.0,
    distance = 3,
    objName = -1036090959,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(464.230469, -984.680420, 43.843895),
    doorType = 'door',
    doorLabel = 'Helipad Stair',
    objYaw = 90.000022888184,
}

-- Helipad Stair 2 created by Ksatria Batang ganda
Config.DoorList['MRPD-Helipad Stair 2'] = {
    fixText = false,
    locked = true,
    doorRate = 1.0,
    distance = 3,
    objName = -1036090959,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(463.323792, -982.196899, 38.760418),
    doorType = 'door',
    doorLabel = 'Helipad Stair',
    objYaw = 270.00003051758,
}