fx_version 'adamant' 
games { 'gta5' } 
 

 
files {

    'data/addon-weapon.meta',
    'data/weaponarchetypes.meta',
    'data/addon-weaponanimations.meta',
    'data/addon-weaponcomponents.meta',
    'data/pedpersonality.meta',
    'data/metroidguys-addon-gunscontentunlocks.meta',
    'data/pickups.meta',
    'data/spstatssetup.xml',
    'data/spstatsuiesetup.xml'
}

    --Flamethrower
    data_file 'WEAPONINFO_FILE' 'data/addon-weapon.meta'
    data_file 'WEAPON_METADATA_FILE' 'data/weaponarchetypes.meta'
    data_file 'WEAPON_ANIMATIONS_FILE' 'data/addon-weaponanimations.meta'
    data_file 'PED_PERSONALITY_FILE' 'data/pedpersonality.meta'
    data_file 'LOADOUTS_FILE' 'data/addon-loadouts.meta'
    data_file 'DLC_WEAPON_PICKUPS' 'data/pickups.meta'
    data_file 'PTFXASSETINFO_FILE' 'data/ptfxassetinfo.meta'

client_scripts {
    --Weapon Names.lua
    'data/shop_weapon.meta'
}