fx_version 'adamant' 
games { 'gta5' } 
 

 
files {

    'data/weaponincendiary.meta',
    'data/weaponarchetypes.meta',
    'data/weaponanimations.meta',
    'data/pedpersonality.meta',
    'data/incendiarycontentunlocks.meta',
    'data/pickups.meta',
    'data/spstatsuisetup.xml',
    'data/ptfxassetinfo.xml',
    'data/weapon_names.lua'
}

    --Flamethrower
    data_file 'WEAPONINFO_FILE' 'data/weaponincendiary.meta'
    data_file 'WEAPON_METADATA_FILE' 'data/weaponarchetypes.meta'
    data_file 'WEAPON_ANIMATIONS_FILE' 'data/weaponanimations.meta'
    data_file 'PED_PERSONALITY_FILE' 'data/pedpersonality.meta'
    data_file 'LOADOUTS_FILE' 'data/loadouts.meta'
    data_file 'DLC_WEAPON_PICKUPS' 'data/pickups.meta'
    data_file 'PTFXASSETINFO_FILE' 'data/ptfxassetinfo.meta'

client_scripts {
    --Weapon Names.lua
    'data/weapon_names.lua'
}