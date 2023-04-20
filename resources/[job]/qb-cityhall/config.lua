Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') ==
    'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.AvailableJobs = {
    -- Only used when not using qb-jobs.
    ["trucker"] = { ["label"] = "Trucker",["isManaged"] = false },
    ["taxi"] = { ["label"] = "Taxi",["isManaged"] = false },
    ["tow"] = { ["label"] = "Tow Truck",["isManaged"] = false },
    ["reporter"] = { ["label"] = "News Reporter",["isManaged"] = false },
    ["garbage"] = { ["label"] = "Garbage Collector",["isManaged"] = false },
    ["bus"] = { ["label"] = "Bus Driver",["isManaged"] = false },
    ["hotdog"] = { ["label"] = "Hot Dog Stand",["isManaged"] = false }
}

Config.Cityhalls = {
    {
        -- Cityhall 1
        coords = vec3(-552.97, -192.05, 38.22),
        showBlip = true,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = "City Services"
        },
        licenses = {
            ["id_card"] = {
                label = "ID Card",
                cost = 50,
            },
        }
    },
}

Config.DrivingSchools = {
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'csb_reporter',
        coords = vec4(-553.41, -192.39, 37.22, 212.26),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = {
            -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    }
}
