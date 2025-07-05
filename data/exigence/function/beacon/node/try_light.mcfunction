# Called by interaction -> beacon.handle_interact

## CONSTRAINTS
#   AS BeaconNode

#=========================================================================================================

# DEBUG
say Try light

#execute at @s run tag @p[tag=ActivePlayer,scores={Interact=1..}] add Lighting

execute if data storage exigence:dungeon_settings {ardor_flame_type:0} run function exigence:beacon/node/private/try_light_flame
execute if data storage exigence:dungeon_settings {ardor_flame_type:1} run function exigence:beacon/node/private/try_light_ember

# Remove local tag
#tag @a[tag=Lighting] remove Lighting
