resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'polarteon/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'polarteon/vehicles.meta'
data_file 'CARCOLS_FILE' 'polarteon/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'polarteon/carvariations.meta'


files {
  'polarteon/handling.meta',
  'polarteon/vehicles.meta',
  'polarteon/carcols.meta',
  'polarteon/carvariations.meta',
  
  
}

client_script 'vehicle_names.lua'
