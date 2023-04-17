Config = Config or {}
--[[
    Author: JDev17#8160
    TRANSLATION:
        To create a new translation file, copy an existing one and rename it to e.g. es (spanish), then translate it and change the imported file in the fxmanifest under shared_scripts.
    GARAGE CONFIGURATION EXAMPLE:
    ['somegarage'] = {
        ['Zone'] = {
            ['Shape'] = { -- Create a polyzone by using '/pzcreate poly', '/pzadd' and '/pzfinish' or '/pzcancel' to cancel it. the newly created polyzone will be in txData/QBCoreFramework_******.base/polyzone_created_zones.txt
            vector2(-1030.4713134766, -3016.3388671875),
            vector2(-970.09686279296, -2914.7397460938),
            vector2(-948.322265625, -2927.9030761718),
            vector2(-950.47174072266, -2941.6584472656),
            vector2(-949.04180908204, -2953.9467773438),
            vector2(-940.78369140625, -2957.2941894532),
            vector2(-943.88732910156, -2964.5512695312),
            vector2(-897.61529541016, -2990.0505371094),
            vector2(-930.01025390625, -3046.0695800782),
            vector2(-942.36407470704, -3044.7858886718),
            vector2(-952.97467041016, -3056.5122070312),
            vector2(-957.11712646484, -3057.0900878906)
            },
            ['minZ'] = 12.5,  -- min height of the parking zone, cannot be the same as maxZ, and must be smaller than maxZ
            ['maxZ'] = 20.0,  -- max height of the parking zone
            -- Important: Make sure the parking zone is high enough - higher than the tallest vehicle and touches the ground (turn on debug to see)
        },
        label = 'Hangar', -- label displayed on phone
        type = 'public', -- 'public', 'job', 'depot' or 'gang'
        showBlip = true, -- optional, when not defined, defaults to false
        blipName = 'Police', -- otional
        blipNumber = 90, -- optional, numbers can be found here: https://docs.fivem.net/docs/game-references/blips/
        blipColor = 69, -- optional, defaults to 3 (Blue), numbers can be found here: https://docs.fivem.net/docs/game-references/blips/
        blipcoords = vector3(-972.66, -3005.4, 13.32), -- blip coordinates
        job = 'police', -- optional, everyone can use it when not defined
        -- job = {'police', 'ambulance'), -- optional, multi job support
        useVehicleSpawner = true, uses the configured job vehicles, make sure to have the job attribute set! (job = 'police')                                                           <---    NEW
        jobGarageIdentifier = 'pd1', required when using vehicle spawner, references the JobVehicles down below, make sure this matches what you used in the JobVehicles table          <---    NEW
        gang = 'vagos', -- optional, same as job but for gangs, do not use both
        -- gang = {'vagos', 'gsf'}, -- optional, multi gang support
        jobVehiclesIndex = 'pd1', -- the corresponding index (JobVehicles)
        vehicleCategories = {'helicopter', 'plane'}, -- categories defined in VehicleCategories
        drawText = 'Hangar', -- the drawtext text, shown when entering the polyzone of that garage
        ParkingDistance = 10.0 -- Optional ParkingDistance, to override the global ParkingDistance
        SpawnDistance = 5.0 -- Optional SpawnDistance, to override the global SpawnDistance
        debug = false -- will show the polyzone and the parking spots, helpful when creating new garages. If too many garages are set to debug, it will not show all parking lots
        ExitWarpLocations: { -- Optional, Used for e.g. Boat parking, to teleport the player out of the boat to the closest location defined in the list.
            vector3(-807.15, -1496.86, 1.6),
            vector3(-800.17, -1494.87, 1.6),
            vector3(-792.92, -1492.18, 1.6),
            vector3(-787.58, -1508.59, 1.6),
            vector3(-794.89, -1511.16, 1.6),
            vector3(-800.21, -1513.05, 1.6),
        }
    },
]]

-- NEW ---
Config.SharedHouseGarage = true -- Allow shared house garages, if false, the player can only access their own vehicles
-- NEW ---

-- NEW ---
Config.AllowParkingAnyonesVehicle = false -- Allow anyones vehicle to be stored in the garage, if false, only vehicles you own can be stored in the garage (supports only public garages)
Config.AllowParkingFromOutsideVehicle = true -- Allow parking from outside the vehicle, if false, you have to be inside the vehicle to park it
Config.VehicleParkDistance = 2.0 -- Distance from the player to the vehicle to park it, radial option will dissapear beyond this distance
-- NEW --

-- NEW
Config.GlobalParking = false -- if true, you can access your cars from any garage, if false, you can only access your cars from the garage you stored them in
-- NEW

-- NEW
Config.SpawnVehiclesServerside = true -- REQUIRES THE ABSOLUTE LATEST VERSION OF QBCORE, OR MAKE SURE YOU HAVE THESE: https://github.com/qbcore-framework/qb-core/blob/81ffd872319d2eb8e496c3b3faaf37e791912c84/server/events.lua#L252
-- NEW 

-- NEW -- Only relevant if AllowSpawningFromAnywhere = false
Config.SpawnAtFreeParkingSpot = false -- Will spawn at the closest free parking spot if you walk up to a occupied parking spot (basically you have to walk up close to a parking lot but it does not matter if there is a vehicle blocking the spawn as it will spawn at the closest free parking spot)
-- NEW --

Config.StoreDamageAccuratly = false -- Do not use, if on latest qb-core, if set to true, make sure to apply / run patch1.sql
Config.StoreParkinglotAccuratly = false  -- store the last parking lot in the DB, if set to true, make sure to apply / run patch1.sql, I recommend applying the tracking snippet for qb-phone from the ReadMe to the phone so you can track the vehicle to the exact parking lot
Config.SpawnAtLastParkinglot = false -- spawn the vehicle at the last parked location if StoreParkinglotAccuratly = true, if set to true, make sure to apply / run patch1.sql, I recommend applying the tracking snippet from the ReadMe to the phone so you can track the vehicle to the exact parking lot
Config.GarageNameAsBlipName = true -- if set to true, the blips name will match the garage name
Config.FuelScript = 'cdn-fuel' -- change to lj-fuel / cdn-fuel if you use lj-fuel / cdn-fuel or something else if you use any other LegcyFuel compatible script
Config.AllowSpawningFromAnywhere = true -- if set to true, the car can be spawned from anywhere inside the zone on the closest parking lot, if set to false you will have to walk up to a parking lot 
Config.AutoRespawn = false --True == auto respawn cars that are outside into your garage on script restart, false == does not put them into your garage and players have to go to the impound
Config.WarpPlayerIntoVehicle = false -- True == Will Warp Player Into their vehicle after pulling it out of garage. False It will spawn on the parking lot / in front of them  (Global, can be overriden by each garage)
Config.HouseParkingDrawText = 'Parking' -- text when driving on to the HOUSE parking lot
Config.ParkingDistance = 2.0 -- Distance to the parking lot when trying to park the vehicle  (Global, can be overriden by each garage)
Config.SpawnDistance = 4.5 -- The maximum distance you can be from a parking spot, to spawn a car (Global, can be overriden by each garage)
Config.DepotPrice = 60.0 -- The price to take out a despawned vehicle from impound.
Config.DrawTextPosition = 'left' -- location of drawtext: left, top, right

-- set useVehicleSpawner = true for each garage that has type job and should use the vehicle spawner instead of personal vehicles
Config.JobVehicles = {
	['pd1'] = { -- jobGarageIdentifier
        label = "Police Vehicles",
        job = 'police',
        -- Grade 0
        vehicles = {
            [0] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",
            },
            -- Grade 1
            [1] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",

            },
            -- Grade 2
            [2] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",
            },
            -- Grade 3
            [3] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",
            },
            -- Grade 4
            [4] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",
            }
        }
    }
}

-- '/restorelostcars <destination_garage>' allows you to restore cars that have been parked in garages which no longer exist in the config (garage renamed or removed). The restored cars get sent to the destination garage or if left empty to a random garage in the list.
-- NOTE: This may also send helis and boats to said garaga so choose wisely
Config.RestoreCommandPermissionLevel = 'god' -- sets the permission level for the above mentioned command

-- THESE VEHICLE CATEGORIES ARE NOT RELATED TO THE ONES IN shared/vehicles.lua
-- Here you can define which category contains which vehicle class. These categories can then be used in the garage config
-- All vehicle classes can be found here: https://docs.fivem.net/natives/?_0x29439776AAA00A62
Config.VehicleCategories = {
    ['car'] = { 0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12 },
    ['motorcycle'] = { 8 },
    ['other'] = { 13 }, -- cycles: 13 - you can move cycles to cars if you want and have anything else like military vehicles in this category
    ['boat'] = { 14 },
    ['helicopter'] = { 15 },
    ['plane'] = { 16 },
    ['service'] = { 17 },
    ['emergency'] = { 18 },
    ['military'] = { 19 },
    ['commercial'] = { 20 },
    -- you can also create new / delete or update categories, and use them below in the config.
}

Config.HouseGarageCategories = {'car', 'motorcycle', 'other'} -- Which categories are allowed to be parked at a house garage


Config.VehicleHeading = 'driverside' -- only used when NO parking spots are defined in the garage config
--[[^^^^^^^^
    'forward' = will face the sameway as the ped
    'driverside' = will put the driver door closets to the ped
    'hood' = will face the hood towards ped
    'passengerside' = will put the passenger door closets to the ped
]]

Config.SharedJobGarages = { -- define the job garages which are shared
    --'pdgarage',
}

Config.Garages = {
    --[[
        types:
        - public
        - job
        - depot
        vehicleCategories:
        - car
        - motorcycle
        - boat
        - helicopter
        - plane
        - other
    ]]
    ['mirrorpark'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(1043.447265625, -767.26947021484),
                vector2(1049.4702148438, -769.44775390625),
                vector2(1049.4797363281, -794.31622314453),
                vector2(1048.9655761719, -794.32214355469),
                vector2(1049.03125, -793.87451171875),
                vector2(1043.466796875, -793.80151367188),
                vector2(1043.3436279297, -794.52691650391),
                vector2(1031.5026855469, -794.34808349609),
                vector2(1007.7255859375, -764.88061523438),
                vector2(1022.2494506836, -752.11022949219),
                vector2(1025.6563720703, -755.25653076172),
                vector2(1030.9210205078, -758.50311279297),
                vector2(1031.2462158203, -758.19201660156),
                vector2(1035.1042480469, -760.79956054688),
                vector2(1030.6268310547, -767.16302490234),
                vector2(1025.9473876953, -763.81085205078),
                vector2(1024.8063964844, -765.39245605469),
                vector2(1033.9915771484, -772.05816650391),
                vector2(1036.6497802734, -781.24871826172),
                vector2(1038.708984375, -780.87786865234),
                vector2(1035.7690429688, -770.72528076172),
                vector2(1032.0593261719, -768.04278564453),
                vector2(1034.0390625, -764.51586914062),
                vector2(1036.8060302734, -766.30773925781),
                vector2(1038.0424804688, -763.41851806641),
                vector2(1043.5157470703, -766.21325683594)
            },
            ['minZ'] = 56.50,
            ['maxZ'] = 59.20
        },
        label = 'Mirror Park Parking',
        showBlip = true,
        blipcoords = vector3(1037.65, -771.62, 58.01),
        blipName = 'Public Parking',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other'},
        drawText = 'Parking',
        debug = false,
        ['ParkingSpots'] = {
            vector4(1023.5, -756.15, 57.48, 225.44),
            vector4(1020.64, -758.19, 57.49, 225.22),
            vector4(1017.57, -760.75, 57.47, 222.83),
            vector4(1014.9, -763.11, 57.4, 223.82),
            vector4(1016.1, -770.57, 57.41, 311.2),
            vector4(1018.8, -773.42, 57.43, 308.15),
            vector4(1020.68, -776.34, 57.39, 311.86),
            vector4(1023.75, -779.38, 57.41, 309.66),
            vector4(1025.72, -782.07, 57.4, 308.8),
            vector4(1028.49, -784.92, 57.41, 307.36),
            vector4(1030.06, -787.96, 57.38, 310.65),
            vector4(1038.12, -791.16, 57.47, 1.48),
            vector4(1046.49, -785.56, 57.5, 89.6),
            vector4(1046.38, -782.01, 57.51, 92.17),
            vector4(1046.22, -778.03, 57.52, 89.04),
            vector4(1046.27, -774.45, 57.52, 90.5),
            vector4(1030.96, -773.4, 57.57, 144.89),
            vector4(1028.05, -771.42, 57.55, 146.44),
            vector4(1029.35, -763.6, 57.49, 56.05),
            vector4(1041.6, -791.45, 57.5, 0.97),
        }
    },
    ['casinop'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(915.48345947266, -14.229139328003),
                vector2(912.52160644531, -19.256662368774),
                vector2(914.41729736328, -20.468030929565),
                vector2(928.14013671875, -29.422761917114),
                vector2(931.68640136719, -24.097787857056),
                vector2(943.31915283203, -31.373510360718),
                vector2(940.18115234375, -36.682193756104),
                vector2(940.63336181641, -37.222324371338),
                vector2(941.06457519531, -38.056762695312),
                vector2(940.69250488281, -39.514526367188),
                vector2(945.86834716797, -42.898574829102),
                vector2(936.578125, -58.041912078857),
                vector2(935.71746826172, -59.93187713623),
                vector2(935.32781982422, -63.596141815186),
                vector2(935.49609375, -65.299346923828),
                vector2(936.2734375, -67.329566955566),
                vector2(938.08367919922, -69.736022949219),
                vector2(939.06182861328, -70.789291381836),
                vector2(942.05615234375, -73.50260925293),
                vector2(944.24096679688, -76.701873779297),
                vector2(945.71282958984, -80.333465576172),
                vector2(945.46759033203, -86.331184387207),
                vector2(944.24163818359, -90.072593688965),
                vector2(942.83435058594, -92.46647644043),
                vector2(928.69256591797, -105.37116241455),
                vector2(926.07592773438, -107.04386138916),
                vector2(922.68194580078, -107.79019927979),
                vector2(918.29956054688, -107.78350067139),
                vector2(914.76385498047, -106.68801879883),
                vector2(891.66986083984, -92.136535644531),
                vector2(894.90283203125, -86.966018676758),
                vector2(877.28314208984, -75.933624267578),
                vector2(873.83764648438, -81.048561096191),
                vector2(849.61877441406, -65.853485107422),
                vector2(842.07305908203, -59.212493896484),
                vector2(832.29779052734, -48.991901397705),
                vector2(836.66088867188, -44.546573638916),
                vector2(834.18530273438, -42.00004196167),
                vector2(832.93865966797, -39.975162506104),
                vector2(832.380859375, -35.275825500488),
                vector2(833.16229248047, -31.17188835144),
                vector2(839.43792724609, -22.388980865479),
                vector2(849.22601318359, -10.30827331543),
                vector2(871.66424560547, 12.689045906067),
                vector2(872.94342041016, 12.611633300781),
                vector2(881.33111572266, 7.0416121482849),
                vector2(880.61773681641, 5.6222538948059),
                vector2(880.45855712891, 1.066015958786),
                vector2(889.86468505859, -5.0284695625305),
                vector2(894.46960449219, -2.9582657814026),
                vector2(895.51623535156, -1.5529407262802)
            },
            ['minZ'] = 77.50,
            ['maxZ'] = 80.00
        },
        label = 'Casino Parking',
        showBlip = true,
        blipcoords = vector3(888.47, -37.44, 78.76),
        blipName = 'Public Parking',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other'},
        drawText = 'Parking',
        debug = false,
        ['ParkingSpots'] = {
            vector4(874.36, -77.52, 78.34, 326.7),
            vector4(868.22, -74.12, 78.34, 327.6),
            vector4(865.89, -71.32, 78.34, 327.2),
            vector4(862.79, -70.26, 78.34, 327.35),
            vector4(859.57, -67.92, 78.34, 326.45),
            vector4(856.54, -66.59, 78.34, 326.94),
            vector4(853.6, -64.76, 78.34, 329.96),
            vector4(850.98, -62.23, 78.34, 315.33);
            vector4(848.28, -60.42, 78.34, 316.25),
            vector4(845.29, -58.06, 78.34, 316.99),
            vector4(843.2, -55.19, 78.34, 315.68),
            vector4(841.22, -52.13, 78.34, 315.19),
            vector4(838.31, -49.98, 78.34, 309.63),
            vector4(836.03, -47.87, 78.34, 310.48),
            vector4(871.34, -75.41, 78.34, 327.5),
            vector4(934.99, -72.5, 78.27, 132.69),
            vector4(937.69, -74.87, 78.27, 135.96),
            vector4(940.12, -77.9, 78.27, 124.93),
            vector4(874.36, -77.52, 78.34, 326.7),
            vector4(871.34, -75.41, 78.34, 327.5),
            vector4(894.66, -90.02, 78.34, 329.43),
            vector4(897.75, -92.07, 78.34, 328.5),
            vector4(900.96, -93.67, 78.34, 326.42),
            vector4(903.67, -95.7, 78.34, 328.69),
            vector4(906.77, -97.42, 78.34, 326.69),
            vector4(909.56, -98.98, 78.27, 329.54),
            vector4(912.88, -100.65, 78.27, 327.47),
            vector4(915.52, -102.44, 78.27, 328.46),
            vector4(919.92, -104.15, 78.27, 355.56),
            vector4(924.34, -102.86, 78.27, 23.29),
            vector4(928.29, -100.03, 78.27, 41.76),
            vector4(931.14, -98.26, 78.27, 42.82),
            vector4(933.29, -95.84, 78.27, 43.98),
            vector4(935.95, -93.66, 78.27, 43.12),
            vector4(938.28, -91.0, 78.27, 43.96),
            vector4(941.5, -86.74, 78.27, 71.64),
            vector4(942.22, -82.22, 78.27, 96.61),
            vector4(932.29, -67.33, 78.27, 108.81),
            vector4(931.48, -62.49, 78.27, 87.5),
            vector4(933.04, -58.41, 78.27, 74.44),
            vector4(934.81, -53.94, 78.27, 56.79),
            vector4(936.58, -51.51, 78.27, 59.07),
            vector4(938.49, -48.34, 78.27, 57.96),
            vector4(939.46, -45.37, 78.27, 57.51),
            vector4(941.87, -42.09, 78.27, 57.26),
            vector4(939.92, -33.37, 78.27, 147.28),
            vector4(937.11, -31.58, 78.27, 146.31),
            vector4(934.46, -29.74, 78.27, 147.43),
            vector4(931.24, -28.27, 78.27, 148.17),
            vector4(911.98, -15.91, 78.27, 148.59),
            vector4(908.33, -14.25, 78.27, 151.66),
            vector4(905.28, -11.85, 78.27, 146.75),
            vector4(901.6, -10.25, 78.27, 151.03),
            vector4(898.56, -7.47, 78.27, 150.42),
            vector4(894.74, -5.36, 78.27, 147.31),
            vector4(878.41, 5.09, 78.27, 148.03),
            vector4(874.81, 6.34, 78.27, 145.35),
            vector4(872.04, 8.2, 78.27, 147.69),
            vector4(857.52, -16.84, 78.27, 61.37),
            vector4(855.4, -18.91, 78.27, 56.95),
            vector4(853.22, -21.71, 78.27, 58.03),
            vector4(851.4, -24.62, 78.27, 56.48),
            vector4(849.71, -27.73, 78.27, 56.12),
            vector4(848.46, -30.95, 78.27, 58.58),
            vector4(846.43, -33.78, 78.27, 58.11),
            vector4(844.31, -36.58, 78.27, 58.6),
            vector4(851.99, -41.32, 78.27, 237.04),
            vector4(854.14, -38.45, 78.27, 237.84),
            vector4(855.52, -35.12, 78.27, 239.77),
            vector4(857.58, -32.6, 78.27, 237.61),
            vector4(859.49, -29.77, 78.27, 238.44),
            vector4(860.76, -26.41, 78.27, 239.23),
            vector4(862.82, -23.64, 78.27, 238.93),
            vector4(864.37, -20.41, 78.27, 237.61),
            vector4(867.05, -18.08, 78.27, 237.15),
            vector4(868.52, -15.1, 78.27, 236.79),
            vector4(870.25, -12.23, 78.27, 236.92),
            vector4(871.96, -9.18, 78.27, 236.79),
            vector4(860.59, -50.52, 78.27, 56.19),
            vector4(862.21, -47.59, 78.27, 57.87),
            vector4(864.07, -44.72, 78.27, 57.35),
            vector4(866.09, -41.98, 78.27, 59.81),
            vector4(868.02, -39.09, 78.27, 58.16),
            vector4(869.38, -35.99, 78.27, 59.41),
            vector4(871.76, -33.27, 78.27, 57.79),
            vector4(873.26, -30.41, 78.27, 58.11),
            vector4(875.5, -27.57, 78.27, 59.75),
            vector4(876.7, -24.3, 78.27, 55.59),
            vector4(878.68, -21.55, 78.27, 55.73),
            vector4(880.83, -18.82, 78.27, 58.7),
            vector4(882.29, -15.94, 78.27, 59.44),
            vector4(868.59, -55.55, 78.27, 239.79),
            vector4(870.31, -52.52, 78.27, 237.16),
            vector4(872.25, -49.62, 78.27, 238.25),
            vector4(873.82, -46.81, 78.27, 237.55),
            vector4(875.38, -43.64, 78.27, 240.61),
            vector4(877.57, -40.99, 78.27, 238.89),
            vector4(879.2, -37.86, 78.27, 239.24),
            vector4(881.32, -35.29, 78.27, 239.98),
            vector4(882.71, -32.06, 78.27, 239.47),
            vector4(884.88, -29.13, 78.27, 238.24),
            vector4(886.69, -26.11, 78.27, 238.21),
            vector4(888.29, -23.61, 78.27, 236.97),
            vector4(890.23, -20.25, 78.27, 237.91),
            vector4(879.01, -62.07, 78.27, 57.16),
            vector4(880.87, -59.46, 78.27, 56.4),
            vector4(882.31, -55.9, 78.27, 56.01),
            vector4(884.39, -53.05, 78.27, 55.15),
            vector4(886.74, -50.98, 78.27, 57.74),
            vector4(887.88, -47.3, 78.27, 56.18),
            vector4(889.9, -44.62, 78.27, 57.31),
            vector4(891.22, -41.1, 78.27, 56.82),
            vector4(893.37, -38.44, 78.27, 57.27),
            vector4(894.9, -35.5, 78.27, 57.88),
            vector4(896.66, -32.62, 78.27, 56.27),
            vector4(898.89, -29.89, 78.27, 59.62),
            vector4(900.59, -27.03, 78.27, 57.96),
            vector4(918.92, -38.5, 78.27, 57.96),
            vector4(917.27, -41.62, 78.27, 57.19),
            vector4(915.72, -44.57, 78.27, 58.35),
            vector4(913.25, -46.72, 78.27, 59.34),
            vector4(911.8, -50.19, 78.27, 58.27),
            vector4(909.86, -52.95, 78.27, 56.01),
            vector4(907.82, -56.09, 78.27, 58.75),
            vector4(906.64, -59.22, 78.27, 59.0),
            vector4(904.82, -62.24, 78.27, 58.09),
            vector4(902.76, -64.94, 78.27, 57.42),
            vector4(900.32, -67.77, 78.27, 60.95),
            vector4(898.92, -70.71, 78.27, 59.52),
            vector4(897.37, -73.94, 78.27, 60.01),
            vector4(905.41, -78.55, 78.27, 237.47),
            vector4(906.51, -75.4, 78.27, 239.08),
            vector4(908.51, -72.21, 78.27, 240.06),
            vector4(910.57, -69.75, 78.27, 239.33),
            vector4(912.5, -66.76, 78.27, 236.77),
            vector4(914.61, -63.85, 78.27, 236.27),
            vector4(916.47, -61.02, 78.27, 239.26),
            vector4(918.2, -57.97, 78.27, 239.18),
            vector4(919.83, -55.26, 78.27, 239.26),
            vector4(921.38, -52.13, 78.27, 239.95),
            vector4(923.46, -49.15, 78.27, 240.09),
            vector4(925.59, -46.6, 78.27, 238.16),
            vector4(925.88, -42.81, 78.27, 239.65),
            vector4(915.9, -84.07, 78.27, 56.96),
            vector4(917.48, -81.16, 78.27, 58.09),
            vector4(920.09, -78.3, 78.27, 55.86),
            vector4(927.69, -83.29, 78.27, 238.3),
            vector4(926.1, -86.14, 78.27, 236.23),
            vector4(924.0, -89.35, 78.27, 237.62),
        }
    },
    ['haanparking'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(67.230964660645, 6414.7719726562),
                vector2(53.828144073486, 6401.8227539062),
                vector2(59.075645446777, 6396.736328125),
                vector2(57.678955078125, 6394.4799804688),
                vector2(55.321895599365, 6393.0532226562),
                vector2(49.954971313477, 6398.6840820312),
                vector2(32.203670501709, 6380.2915039062),
                vector2(36.029750823975, 6376.328125),
                vector2(33.88489151001, 6373.9545898438),
                vector2(31.614000320435, 6372.1850585938),
                vector2(27.5251121521, 6376.2802734375),
                vector2(3.0867385864258, 6350.3901367188),
                vector2(7.4540538787842, 6345.6538085938),
                vector2(6.2227344512939, 6343.2216796875),
                vector2(3.7218370437622, 6341.9638671875),
                vector2(-0.76969349384308, 6346.2749023438),
                vector2(-22.776170730591, 6325.3828125),
                vector2(-24.351142883301, 6322.0849609375),
                vector2(-23.452659606934, 6319.2861328125),
                vector2(-12.439478874207, 6304.8647460938),
                vector2(-10.365778923035, 6304.6127929688),
                vector2(5.0310492515564, 6313.4970703125),
                vector2(5.2357106208801, 6314.859375),
                vector2(41.809215545654, 6335.396484375),
                vector2(42.73751449585, 6334.2446289062),
                vector2(71.22339630127, 6349.8232421875),
                vector2(68.208351135254, 6355.2939453125),
                vector2(117.06902313232, 6378.890625)
            },
            ['minZ'] = 30.00,  -- min height of the parking zone
            ['maxZ'] = 33.38,  -- max height of the parking zone
        },
        label = "Bell Farms Parking",
        showBlip = true,
        blipcoords = vector3(78.34, 6418.74, 31.28),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other'},
        drawText = 'Parking',                 --car, air, sea
        debug = false
    },
    ['impoundlot'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-128.76565551758, -1186.7231445312),
            vector2(-128.95680236816, -1158.9990234375),
            vector2(-155.75888061524, -1158.6616210938),
            vector2(-155.84657287598, -1186.7335205078)
            },
            ['minZ'] = 22.25,  -- min height of the parking zone
            ['maxZ'] = 26.31,  -- max height of the parking zone
            debug = false,
        },
        label = "Impound Lot",
        showBlip = true,
        blipcoords = vector3(-143.15, -1175.06, 23.77),
        blipName = "Impound Lot",
        blipNumber = 68,
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other'},
        drawText = 'Impound',                 --car, air, sea
        debug = false,
        ['ParkingSpots'] = {
            vector4(-152.91, -1170.13, 23.14, 270.11),
            vector4(-153.26, -1166.51, 23.14, 270.74),
            vector4(-147.67, -1161.83, 23.14, 179.67),
            vector4(-144.19, -1161.83, 23.14, 179.02),
            vector4(-139.1, -1161.6, 23.14, 178.95),
            vector4(-131.92, -1166.54, 23.14, 89.09),
            vector4(-132.01, -1170.05, 23.14, 90.24),
            vector4(-132.03, -1175.15, 23.14, 90.94),
            vector4(-131.99, -1178.68, 23.14, 90.07),
            vector4(-131.95, -1182.25, 23.14, 90.11),
        }
    },
    ['police'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(424.04116821289, -996.57763671875),
            vector2(424.06527709961, -989.26031494141),
            vector2(425.71801757812, -989.09265136719),
            vector2(425.81674194336, -976.69262695312),
            vector2(435.88687133789, -976.69598388672),
            vector2(435.67416381836, -988.36956787109),
            vector2(460.57388305664, -988.056640625),
            vector2(460.57315063477, -994.22918701172),
            vector2(469.37850952148, -994.19567871094),
            vector2(469.57803344727, -996.009765625),
            vector2(475.79782104492, -996.11297607422),
            vector2(475.79791259766, -1003.6975708008),
            vector2(464.75442504883, -1003.6976318359),
            vector2(463.52410888672, -998.36700439453),
            vector2(454.23962402344, -998.45220947266),
            vector2(454.173828125, -996.06066894531)
            },
            ['minZ'] = 22.10,  -- min height of the parking zone
            ['maxZ'] = 26.97,  -- max height of the parking zone
        },
        label = "Police",
        showBlip = false,
        blipName = "Police",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'emergency'},
        drawText = 'Parking',              --car, air, sea
        job = "police",
        debug = false,
        ['ParkingSpots'] = {
            vector4(426.36, -994.33, 24.79, 268.43),
            vector4(426.37, -990.75, 24.79, 271.62),
            vector4(427.25, -979.47, 24.79, 178.97),
            vector4(430.76, -979.64, 24.79, 180.23),
            vector4(434.53, -979.37, 24.79, 180.29),
            vector4(439.53, -989.33, 24.79, 88.3),
            vector4(445.22, -989.38, 24.79, 89.52),
            vector4(451.53, -989.44, 24.79, 89.51),
            vector4(457.67, -989.49, 24.79, 89.5),
            vector4(473.43, -997.85, 24.79, 89.24),
            vector4(472.7, -1001.74, 24.79, 89.56)
        }
    },
    ['apartments'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-363.8267211914, -862.93182373046),
                vector2(-268.29055786132, -885.1919555664),
                vector2(-282.65710449218, -925.12030029296),
                vector2(-298.25598144532, -919.4287109375),
                vector2(-302.71203613282, -930.14245605468),
                vector2(-297.5908203125, -932.38952636718),
                vector2(-310.84530639648, -969.61614990234),
                vector2(-289.9221496582, -977.25311279296),
                vector2(-296.0697631836, -994.66876220704),
                vector2(-364.01559448242, -969.91552734375)
            },
            ['minZ'] = 30.0,  -- min height of the parking zone
            ['maxZ'] = 33.0,  -- max height of the parking zone

        },
        label = 'Alta Apartments',
        showBlip = true,
        blipcoords = vector3(-330.57, -970.2, 31.08),
        blipName = "Public Parking",
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other'},
        drawText = 'Parking',
        ["ParkingSpots"] = {
            vector4(-297.71, -990.11, 30.76, 338.79),
            vector4(-301.09, -988.82, 30.76, 339.11),
            vector4(-304.64, -987.72, 30.76, 339.36),
            vector4(-308.09, -986.34, 30.76, 339.47),
            vector4(-311.46, -985.08, 30.76, 339.5),
            vector4(-315.07, -983.98, 30.76, 339.18),
            vector4(-318.71, -982.49, 30.76, 338.43),
            vector4(-285.76, -888.04, 30.76, 168.44),
            vector4(-289.39, -887.34, 30.76, 168.59),
            vector4(-292.99, -886.36, 30.76, 167.4),
            vector4(-296.78, -885.82, 30.75, 167.93),
            vector4(-300.35, -885.14, 30.76, 167.76),
            vector4(-303.82, -884.06, 30.76, 167.76),
            vector4(-307.59, -883.44, 30.76, 167.24),
            vector4(-311.16, -882.7, 30.76, 166.92),
            vector4(-314.74, -881.99, 30.75, 166.91),
            vector4(-318.34, -881.19, 30.75, 167.5),
            vector4(-322.02, -880.47, 30.75, 167.75),
            vector4(-325.62, -879.65, 30.75, 168.31),
            vector4(-329.11, -878.9, 30.75, 168.35),
            vector4(-332.88, -878.22, 30.75, 167.35),
            vector4(-336.55, -877.38, 30.75, 168.02),
            vector4(-340.1, -876.67, 30.75, 167.45),
            vector4(-343.78, -875.91, 30.75, 167.01),
            vector4(-352.86, -874.08, 30.75, 0.76),
            vector4(-360.26, -889.43, 30.75, 269.23),
            vector4(-360.46, -893.17, 30.75, 268.23),
            vector4(-360.24, -896.83, 30.75, 270.26),
            vector4(-360.37, -900.58, 30.75, 268.61),
            vector4(-360.29, -904.27, 30.75, 269.75),
            vector4(-360.14, -908.01, 30.75, 270.4),
            vector4(-360.5, -911.66, 30.76, 269.55),
            vector4(-360.12, -915.4, 30.76, 269.63),
            vector4(-360.28, -919.07, 30.76, 270.11),
            vector4(-360.56, -922.77, 30.75, 268.41),
            vector4(-360.46, -926.49, 30.76, 270.43),
            vector4(-360.37, -930.12, 30.76, 269.72),
            vector4(-360.22, -933.88, 30.76, 270.34),
            vector4(-360.28, -937.58, 30.76, 269.99),
            vector4(-360.47, -941.31, 30.75, 269.54),
            vector4(-360.28, -944.99, 30.76, 270.14),
            vector4(-360.32, -948.72, 30.76, 269.82),
            vector4(-360.38, -952.44, 30.75, 269.95),
            vector4(-360.57, -956.16, 30.76, 270.31),
            vector4(-322.02, -981.29, 30.76, 339.92),
            vector4(-325.56, -980.1, 30.76, 340.1),
            vector4(-329.0, -978.69, 30.76, 338.49),
            vector4(-332.49, -977.59, 30.76, 339.58),
            vector4(-335.9, -976.3, 30.76, 339.7),
            vector4(-339.43, -975.08, 30.76, 339.47),
            vector4(-342.7, -973.45, 30.76, 338.85),
            vector4(-326.58, -956.4, 30.75, 250.37),
            vector4(-325.37, -952.84, 30.76, 250.47),
            vector4(-324.03, -949.43, 30.76, 250.37),
            vector4(-322.69, -945.96, 30.75, 249.91),
            vector4(-321.47, -942.43, 30.76, 250.29),
            vector4(-320.23, -939.06, 30.76, 250.38),
            vector4(-318.8, -935.56, 30.76, 249.46),
            vector4(-317.66, -932.03, 30.76, 250.73),
            vector4(-316.5, -928.43, 30.76, 250.15),
            vector4(-345.07, -932.2, 30.76, 69.27),
            vector4(-343.99, -928.61, 30.76, 70.11),
            vector4(-342.58, -925.18, 30.76, 70.69),
            vector4(-341.39, -921.67, 30.76, 69.83),
            vector4(-327.34, -924.44, 30.76, 69.82),
            vector4(-328.81, -927.89, 30.76, 69.43),
            vector4(-330.09, -931.33, 30.76, 70.81),
            vector4(-331.29, -934.83, 30.76, 70.29),
            vector4(-332.71, -938.34, 30.76, 69.75),
            vector4(-333.91, -941.81, 30.76, 69.46),
            vector4(-335.02, -945.3, 30.75, 71.24),
            vector4(-336.56, -948.74, 30.75, 70.65),
            vector4(-337.69, -952.22, 30.76, 70.31),
            vector4(-340.74, -902.45, 30.75, 167.89),
            vector4(-337.18, -903.24, 30.75, 167.65),
            vector4(-333.64, -903.98, 30.75, 167.05),
            vector4(-329.93, -904.61, 30.75, 167.95),
            vector4(-326.38, -905.62, 30.75, 168.51),
            vector4(-322.65, -906.2, 30.75, 167.96),
            vector4(-318.98, -906.94, 30.75, 168.06),
            vector4(-315.39, -907.89, 30.75, 166.81),
            vector4(-311.81, -908.81, 30.75, 167.5),
            vector4(-308.14, -909.33, 30.75, 167.34),
            vector4(-285.56, -921.9, 30.76, 70.14),
            vector4(-283.75, -918.52, 30.76, 70.23),
            vector4(-282.97, -914.81, 30.75, 69.93),
            vector4(-281.65, -911.4, 30.76, 69.49),
            vector4(-280.5, -908.04, 30.76, 69.51),
            vector4(-279.28, -904.45, 30.76, 70.18),
            vector4(-302.07, -933.44, 30.75, 69.9),
            vector4(-303.19, -937.09, 30.76, 70.71),
            vector4(-304.56, -940.34, 30.76, 70.04),
            vector4(-305.74, -943.95, 30.76, 70.49),
            vector4(-307.19, -947.34, 30.76, 69.04),
            vector4(-308.26, -950.95, 30.76, 70.24),
            vector4(-309.63, -954.35, 30.76, 68.9),
            vector4(-310.83, -957.88, 30.76, 69.56),
            vector4(-312.07, -961.38, 30.76, 70.21),
            vector4(-313.39, -964.8, 30.76, 68.92),
            vector4(-298.26, -899.82, 30.66, 346.23),
            vector4(-302.47, -898.86, 30.66, 348.7),
            vector4(-305.9, -898.52, 30.66, 351.35),
            vector4(-309.58, -897.38, 30.66, 347.24),
            vector4(-313.04, -896.37, 30.65, 349.98),
            vector4(-316.74, -895.46, 30.65, 347.83),
            vector4(-320.36, -894.95, 30.65, 348.97),
            vector4(-324.05, -893.86, 30.65, 348.71),
            vector4(-327.67, -893.18, 30.65, 347.61),
            vector4(-331.02, -892.69, 30.65, 346.03),
            vector4(-334.83, -891.72, 30.65, 350.2),
            vector4(-338.6, -891.08, 30.65, 348.34),
        },
        debug = false

    },
    ['pdgarage'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(431.99456787109, -1030.3159179688),
            vector2(429.21585083008, -1011.6477661133),
            vector2(459.07495117188, -1012.0342407227),
            vector2(459.05596923828, -1026.5767822266)
            },
            ['minZ'] = 26.0,  -- min height of the parking zone
            ['maxZ'] = 30.0,  -- max height of the parking zone
        },
        label = 'MRPD Garage',
        type = 'job',
        job = "police",
        --useVehicleSpawner = false,
        --jobGarageIdentifier = 'pd1',
        vehicleCategories = {'emergency', 'car', 'motorcycle', 'other'},
        drawText = 'Parking',
        ["ParkingSpots"] = {
            vector4(445.88, -1020.02, 28.2, 93.17)
        },
        debug = false
    },    
    ['pillbox_hospital'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(285.91815185547, -617.24877929688),
            vector2(292.50628662109, -598.53607177734),
            vector2(303.13314819336, -602.99102783203),
            vector2(295.79602050781, -617.80078125),
            vector2(290.91641235352, -616.05999755859),
            vector2(289.79968261719, -618.69445800781)
            },
            ['minZ'] = 40.261405944824,  -- min height of the parking zone
            ['maxZ'] = 45.35277557373,  -- max height of the parking zone

        },
        label = 'Pillbox Hospital',
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'emergency'},
        drawText = 'Parking',
        ["ParkingSpots"] = {
            vector4(296.01, -610.95, 42.91, 69.3),
            vector4(297.09, -608.15, 42.92, 69.88),
            vector4(298.17, -605.33, 42.9, 67.62),
            vector4(299.36, -602.59, 42.87, 68.68)
        },
        debug = false

    },
    ['mechanic'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(846.28271484375, -2107.2751464844),
            vector2(847.32403564453, -2096.1076660156),
            vector2(858.75408935547, -2097.4619140625),
            vector2(855.53039550781, -2132.5942382812),
            vector2(844.02380371094, -2132.494140625)
            },
            ['minZ'] = 28.0,  -- min height of the parking zone
            ['maxZ'] = 32.0,  -- max height of the parking zone

        },
        label = 'Mechanic',
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'emergency'},
        drawText = 'Parking',
        ["ParkingSpots"] = {
            vector4(850.2, -2105.33, 30.18, 267.88),
            vector4(849.99, -2101.88, 30.17, 264.45),
            vector4(850.03, -2098.27, 30.19, 264.68),
            vector4(849.15, -2116.51, 30.19, 264.92),
            vector4(848.67, -2119.68, 30.19, 266.52),
            vector4(848.49, -2123.09, 30.19, 266.61),
            vector4(848.25, -2126.75, 30.19, 262.87),
            vector4(847.59, -2130.17, 30.19, 265.61)
        },
        debug = false

    },
    ['rs_kanpol_ss'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(1868.2653808594, 3687.4372558594),
            vector2(1872.0260009766, 3680.5764160156),
            vector2(1820.9058837891, 3650.0981445312),
            vector2(1816.3238525391, 3657.8671875)
            },
            ['minZ'] = 31.0,  -- min height of the parking zone
            ['maxZ'] = 35.0,  -- max height of the parking zone

        },
        label = 'Shandy PDHS',
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'emergency'},
        drawText = 'Parking',
        ["ParkingSpots"] = {
            vector4(1819.31, 3654.84, 33.79, 209.71),
            vector4(1821.9, 3657.35, 33.7, 208.01),
            vector4(1825.46, 3658.88, 33.64, 210.09),
            vector4(1828.77, 3660.83, 33.55, 210.01),
            vector4(1831.64, 3663.09, 33.51, 209.18),
            vector4(1835.19, 3664.66, 33.4, 211.6),
            vector4(1847.58, 3671.62, 33.35, 208.64),
            vector4(1850.69, 3674.33, 33.41, 208.15),
            vector4(1853.77, 3675.79, 33.4, 208.77),
            vector4(1862.63, 3680.83, 33.36, 211.17),
            vector4(1866.83, 3683.18, 33.36, 211.54)
        },
        debug = false
    },
    ['paletopd'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-450.36346435547, 6041.3549804688),
            vector2(-478.63851928711, 6014.708984375),
            vector2(-488.33721923828, 6024.4287109375),
            vector2(-460.89953613281, 6051.8676757812)
            },
            ['minZ'] = 31.0,  -- min height of the parking zone
            ['maxZ'] = 35.0,  -- max height of the parking zone

        },
        label = 'Paleto PD',
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other', 'emergency'},
        drawText = 'Parking',
        ["ParkingSpots"] = {
            vector4(-482.28, 6024.05, 30.99, 223.32),
            vector4(-478.98, 6027.44, 30.99, 227.24),
            vector4(-476.08, 6031.86, 30.99, 219.66),
            vector4(-472.12, 6034.91, 30.99, 228.61),
            vector4(-468.66, 6038.84, 30.99, 222.56),
            vector4(-461.04, 6047.23, 30.99, 135.59),
            vector4(-457.76, 6044.18, 30.99, 133.58),
            vector4(-454.76, 6040.62, 30.99, 135.94)
        },
        debug = false
    },
}

Config.HouseGarages = {} -- DO NOT TOUCH!

Garages = Config.Garages
HouseGarages = Config.HouseGarages
