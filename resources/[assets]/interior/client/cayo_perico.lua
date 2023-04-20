local requestedIpl = {"h4_islandairstrip", "h4_islandairstrip_props", "h4_islandx_mansion", "h4_islandx_mansion_props", "h4_islandx_props", "h4_islandxdock", "h4_islandxdock_props", "h4_islandxdock_props_2", "h4_islandxtower", "h4_islandx_maindock", "h4_islandx_maindock_props", "h4_islandx_maindock_props_2", "h4_IslandX_Mansion_Vault", "h4_islandairstrip_propsb", "h4_beach", "h4_beach_props", "h4_beach_bar_props", "h4_islandx_barrack_props", "h4_islandx_checkpoint", "h4_islandx_checkpoint_props", "h4_islandx_Mansion_Office", "h4_islandx_Mansion_LockUp_01", "h4_islandx_Mansion_LockUp_02", "h4_islandx_Mansion_LockUp_03", "h4_islandairstrip_hangar_props", "h4_IslandX_Mansion_B", "h4_islandairstrip_doorsclosed", "h4_Underwater_Gate_Closed", "h4_mansion_gate_closed", "h4_aa_guns", "h4_IslandX_Mansion_GuardFence", "h4_IslandX_Mansion_Entrance_Fence", "h4_IslandX_Mansion_B_Side_Fence", "h4_IslandX_Mansion_Lights", "h4_islandxcanal_props", "h4_beach_props_party", "h4_islandX_Terrain_props_06_a", "h4_islandX_Terrain_props_06_b", "h4_islandX_Terrain_props_06_c", "h4_islandX_Terrain_props_05_a", "h4_islandX_Terrain_props_05_b", "h4_islandX_Terrain_props_05_c", "h4_islandX_Terrain_props_05_d", "h4_islandX_Terrain_props_05_e", "h4_islandX_Terrain_props_05_f", "H4_islandx_terrain_01", "H4_islandx_terrain_02", "H4_islandx_terrain_03", "H4_islandx_terrain_04", "H4_islandx_terrain_05", "H4_islandx_terrain_06", "h4_ne_ipl_00", "h4_ne_ipl_01", "h4_ne_ipl_02", "h4_ne_ipl_03", "h4_ne_ipl_04", "h4_ne_ipl_05", "h4_ne_ipl_06", "h4_ne_ipl_07", "h4_ne_ipl_08", "h4_ne_ipl_09", "h4_nw_ipl_00", "h4_nw_ipl_01", "h4_nw_ipl_02", "h4_nw_ipl_03", "h4_nw_ipl_04", "h4_nw_ipl_05", "h4_nw_ipl_06", "h4_nw_ipl_07", "h4_nw_ipl_08", "h4_nw_ipl_09", "h4_se_ipl_00", "h4_se_ipl_01", "h4_se_ipl_02", "h4_se_ipl_03", "h4_se_ipl_04", "h4_se_ipl_05", "h4_se_ipl_06", "h4_se_ipl_07", "h4_se_ipl_08", "h4_se_ipl_09", "h4_sw_ipl_00", "h4_sw_ipl_01", "h4_sw_ipl_02", "h4_sw_ipl_03", "h4_sw_ipl_04", "h4_sw_ipl_05", "h4_sw_ipl_06", "h4_sw_ipl_07", "h4_sw_ipl_08", "h4_sw_ipl_09", "h4_islandx_mansion", "h4_islandxtower_veg", "h4_islandx_sea_mines", "h4_islandx", "h4_islandx_barrack_hatch", "h4_islandxdock_water_hatch", "h4_beach_party"}

CreateThread(function()
	for i = #requestedIpl, 1, -1 do
		RequestIpl(requestedIpl[i])
		requestedIpl[i] = nil
	end
	requestedIpl = nil
end)

CreateThread(function()
	Wait(2500)
	local islandLoaded = false
	local islandCoords = vector3(4840.571, -5174.425, 2.0)
	SetDeepOceanScaler(0.0)
	while true do
		local pCoords = GetEntityCoords(PlayerPedId())
		if #(pCoords - islandCoords) < 2000.0 then
			if not islandLoaded then
				islandLoaded = true
				Citizen.InvokeNative(0xF74B1FFA4A15FBEA, 1)
			end
		else
			if islandLoaded then
				islandLoaded = false
				Citizen.InvokeNative(0xF74B1FFA4A15FBEA, 0)
			end
		end
		Wait(5000)
	end
end)


---Will be true if the player is close to cayo perico
---@type boolean
local _isCloseToCayo = false

---Will be true if the minimap is loaded with SetToggleMinimapHeistIsland
---@type boolean
local _isCayoMinimapLoaded = false

---Checks coords to know if the player is close enough to cayo perico to be in need to load the minimap with SetToggleMinimapHeistIsland
Citizen.CreateThread(function()
    while true do
        ---Wether the player is actually close to cayo perico or not
        ---@type boolean
        local isCloseToCayo = #(GetEntityCoords(PlayerPedId()) - vector3(4858.0, -5171.0, 2.0)) < 2200.0

        if _isCloseToCayo ~= isCloseToCayo then
            -- If the player is now close to cayo perico and was not, or vice versa
            -- Then we init our variables and unload the minimap
            _isCloseToCayo = isCloseToCayo
            _isCayoMinimapLoaded = isCloseToCayo

            -- switch radar interior
            SetToggleMinimapHeistIsland(_isCloseToCayo)
        end

        Wait(5000)
    end
end)

---Handle the minimap loading and unloading
CreateThread(function()
  local cayoFixBlip = AddBlipForCoord(5943.0, -6272.0, 0)
  SetBlipSprite(cayoFixBlip, 575)
  SetBlipDisplay(cayoFixBlip, 4)
  SetBlipScale(cayoFixBlip, 0.0)
  SetBlipColour(cayoFixBlip, 0)
  SetBlipAsShortRange(cayoFixBlip, true)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString("Cayo Perico")
  EndTextCommandSetBlipName(cayoFixBlip)
    while true do
        ---We don't need to do something every frame in every cases
        ---@type integer
        local wait = 500

        if IsPauseMenuActive() and not IsMinimapInInterior() then
            -- If the player is in the pause menu and not looking at an interior minimap
            if _isCayoMinimapLoaded then
                -- If the minimap was loaded with SetToggleMinimapHeistIsland, then we disable it
                _isCayoMinimapLoaded = false
                SetToggleMinimapHeistIsland(false)
            end
            -- We force load the cayo perico minimap
            SetRadarAsExteriorThisFrame()
            SetRadarAsInteriorThisFrame(GetHashKey("h4_fake_islandx"), 4700.0, -5145.0, 0, 0)
            wait = 0

        elseif not _isCayoMinimapLoaded and _isCloseToCayo then
            -- If the minimap is not loaded with SetToggleMinimapHeistIsland and the player is close to cayo perico, then we load it
            _isCayoMinimapLoaded = true
            SetToggleMinimapHeistIsland(true)
        end
        Wait(wait)
    end
end)
