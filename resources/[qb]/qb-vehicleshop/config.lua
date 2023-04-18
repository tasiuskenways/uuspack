Config = {}
Config.UseTarget = true--GetConvar('UseTarget', 'false') == 'true'
Config.Debug = true

Config.PlateLetters  = 4
Config.PlateNumbers  = 4
Config.PlateUseSpace = false

Config.SpawnVehicle = true  -- TRUE if you want spawn vehicle when purchased (If set to false, MAKE SURE to provide a garage in the shop's config)
Config.FuelSystem = "cdn-fuel"

Config.BlacklistedVehicles = { -- These vehicles won't show up in the shop
    ['akula'] = true,
    ['alkonost'] = true,
    ['annihilator'] = true,
    ['annihilator2'] = true,
    ['apc'] = true,
    ['ardent'] = true,
    ['avenger'] = true,
    ['barrage'] = true,
    ['blazer5'] = true,
    ['bombushka'] = true,
    ['boxville5'] = true,
    ['bruiser'] = true,
    ['brutus'] = true,
    ['buffalo4'] = false,
    ['buzzard'] = true,
    ['buzzard2'] = true,
    ['caracara'] = true,
    ['cerberus'] = true,
    ['cerberus2'] = true,
    ['cerberus3'] = true,
    ['champion'] = true,
    ['chernobog'] = true,
    ['comet4'] = false,
    ['deathbike'] = true,
    ['deity'] = false,
    ['deluxo'] = true,
    ['dinghy5'] = true,
    ['dominator4'] = true,
    ['dune3'] = true,
    ['granger2'] = false,
    ['halftrack'] = true,
    ['hunter'] = true,
    ['hydra'] = true,
    ['impaler2'] = true,
    ['impaler3'] = true,
    ['imperator'] = true,
    ['insurgent'] = true,
    ['insurgent3'] = true,
    ['issi4'] = true,
    ['jb7002'] = true,
    ['jet'] = true,
    ['jubilee'] = false,
    ['khanjali'] = true,
    ['kosatka'] = true,
    ['lazer'] = true,
    ['limo2'] = true,
    ['menacer'] = true,
    ['microlight'] = true,
    ['minitank'] = true,
    ['mogul'] = true,
    ['molotok'] = true,
    ['monster3'] = true,
    ['mule4'] = true,
    ['nightshark'] = true,
    ['nokota'] = true,
    ['oppressor'] = true,
    ['oppressor2'] = true,
    ['paragon2'] = true,
    ['patriot3'] = false,
    ['patrolboat'] = true,
    ['pounder2'] = true,
    ['pyro'] = true,
    ['rcbandito'] = true,
    ['revolter'] = true,
    ['rhino'] = true,
    ['rogue'] = true,
    ['ruiner2'] = true,
    ['savage'] = true,
    ['savestra'] = true,
    ['scarab'] = true,
    ['scarab2'] = true,
    ['scarab3'] = true,
    ['scramjet'] = true,
    ['seabreeze'] = true,
    ['seasparrow2'] = true,
    ['seasparrow3'] = true,
    ['slamvan4'] = true,
    ['speedo4'] = true,
    ['starling'] = true,
    ['strikeforce'] = true,
    ['stromberg'] = true,
    ['tampa3'] = true,
    ['technical'] = true,
    ['technical2'] = true,
    ['technical3'] = true,
    ['terbyte'] = true,
    ['thruster'] = true,
    ['titan'] = true,
    ['toreador'] = true,
    ['trailerlarge'] = true,
    ['trailersmall2'] = true,
    ['tula'] = true,
    ['valkyrie'] = true,
    ['vigilante'] = true,
    ['viseris'] = true,
    ['volatol'] = true,
    ['zr380'] = true,

    -- OTHER
    ['firetruk'] = true,
    ['ambulance'] = true,
    ['blimp'] = true,
    ['blimp2'] = true,
    ['blimp3'] = true,

    ['frogger'] = true,
    ['swift'] = true,
    ['cargobob'] = true,
    ['dune2'] = true,
    ['monster'] = true,
    ['polmav'] = true,
    ['policeb'] = true,

    ['seasparrow'] = true,
    ['havok'] = true,
    ['volatus'] = true,
    ['supervolito'] = true,
    ['supervolito2'] = true,

    ['riot2'] = true,
    ['voltic2'] = true,

    ['airtug'] = true,
    ['camper'] = true,
    ['luxor'] = true,
    ['luxor2'] = true,
    ['maverick'] = true,
    ['mule'] = true,
    ['rrocket'] = true,
    ['shamal'] = true,
}

Config.LimitQuantityVehicles = { -- These vehicles will be limited to the number set (This is only temporary, after the resource is restarted, it returns to its original amount)
    --["blista"] = 1, -- vehicle/quantity
}

Config.PriceDiscount = {
    --["blista"] = 1500 -- vehicle/price change (a positive number adds to the base value, while a negative number removes from the base value qb-core/shared/vehicles.lua)
}

Config.Shops = {
    ['pdm'] = { -- The Shop identifier.
        garage = "pillboxgarage", -- Value is not required. Used to set primary garage after purchase
        coord = vector4(-56.5, -1096.58, 26.42-1, 28.94), -- used for the NPC and blip
        blip = { -- Table is not required
            sprite = 326,
            scale = 0.75,
            display = 4,
            colour = 3,
            shortrange = true,
            label = "Premium Deluxe Motorsport"
        },
        target = { -- Table is REQUIRED if Config.UseTarget is true
            -- For peds
            usePed = true, -- if you want to use a ped instead of a boxzone
            pedModel = `a_m_m_indian_01`, -- the ped model
            pedAnimation = "", -- the ped animation (not required)
            -- For boxzones
            length = 1,
            width = 1,
            minZ = 26.42,
            maxZ = 27.42,
            debugPoly = false,
            -- For both
            distance = 2.5,
            properties = {
                icon = "fas fa-car",
                label = "Purchase a Vehicle",
                job = "" -- if you want to set the interaction of the taget to a job. Can be job = "police" or job = {["police"] = 0, ["ambulance"] = 2}
            }
        },
        setupStore = { -- Table is REQUIRED
            allowTestDrive = { -- Table is not required
                spawnTestLoc = vector4(-11.87, -1080.87, 25.71, 132.0), -- Where the test vehicle will spawn
                testDriveTime = 30 -- in seconds
            },
            spawnPurchaseLoc = vector4(-56.79, -1109.85, 26.43, 71.5), -- where a purchased vehicle will spawn
            shopVehicleLoc = vector4(-49.66, -1095.51, 26.11, 114.06), -- where the preview vehicle will spawn
            shopCameraLoc = {-55.66, -1095.51, 28.21, 114.06, 0.0, 0.0} --posx,posy,poz,rotx,roty,rotz | this is where the camera will be
        },
        showVehicles = { -- Table is not required
            -- [1] = {model = `granger2`, livery = 0, location = vector4(-43.22, -1094.51, 25.87, 218.0)},
            -- [2] = {model = `windsor`, location = vector4(-45.92, -1102.95, 25.87, 293.39)},
            -- [3] = {model = `vigero`, location = vector4(-39.54, -1095.73, 26.09, 212.0)},
            -- [4] = {model = `schafter2`, location = vector4(-48.51, -1101.36, 26.01, 305.47)},
            -- [5] = {model = `bati`, location = vector4(-40.02, -1106.04, 25.77, 303.97)},
            -- [6] = {model = `tribike`, location = vector4(-41.42, -1105.42, 26.04, 8.98)},
        }
    },
}