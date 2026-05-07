# Called by interaction -> beacon.handle_interact

## CONSTRAINTS
#   AS BeaconNode

#====================================================================================================

# DEBUG
execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Try light beacon

execute if data storage exigence:dungeon_settings {ardor_flame_type:0} run function exigence:beacon/node/private/try_light_flame
execute if data storage exigence:dungeon_settings {ardor_flame_type:1} run function exigence:beacon/node/private/try_light_ember
