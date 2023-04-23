fx_version 'cerulean'

files {
	'weaponarchetypes.meta',
	'weaponcomponents.meta',
	'weaponanimations.meta',
	'weapon_huntingrifle.meta',
	'weapons.meta',
	'client.meta'
}

data_file 'WEAPON_METADATA_FILE' 'weaponarchetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' 'weaponanimations.meta'
data_file 'WEAPON_COMPONENTS_FILE' 'weaponcomponents.meta'
data_file 'WEAPONCOMPONENTSINFO_FILE' 'weaponcomponents.meta'
data_file 'WEAPONINFO_FILE' 'weapon_huntingrifle.meta'
data_file 'WEAPONINFO_FILE_PATCH' 'weapons.meta'
client_script "@badgeranticheat/acloader.lua"
