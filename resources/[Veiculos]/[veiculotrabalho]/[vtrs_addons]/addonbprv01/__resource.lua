resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'ghispo2/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'ghispo2/vehicles.meta'
data_file 'CARCOLS_FILE' 'ghispo2/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'ghispo2/carvariations.meta'


files {
  'ghispo2/handling.meta',
  'ghispo2/vehicles.meta',
  'ghispo2/carcols.meta',
  'ghispo2/carvariations.meta',
  
  
}

client_script 'vehicle_names.lua'
