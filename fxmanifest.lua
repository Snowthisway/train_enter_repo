fx_version 'cerulean'
game 'gta5'

dependencies {
    '/gameBuild:2372'
}
files {
	'data/vehicles.meta',
    'data/carvariations.meta',
    'data/trains.xml'
}

client_scripts {
    'utils.lua',
    'test.lua'
}

data_file 'VEHICLE_METADATA_FILE' 'data/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/carvariations.meta'
data_file 'TRAINCONFIGS_FILE' 'data/trains.xml'
