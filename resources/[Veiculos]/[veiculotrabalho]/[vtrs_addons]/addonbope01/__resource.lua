resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'sef_pfinder/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'sef_pfinder/vehicles.meta'
data_file 'CARCOLS_FILE' 'sef_pfinder/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'sef_pfinder/carvariations.meta'


files {
  'sef_pfinder/handling.meta',
  'sef_pfinder/vehicles.meta',
  'sef_pfinder/carcols.meta',
  'sef_pfinder/carvariations.meta',
  
  
}

client_script 'vehicle_names.lua'
