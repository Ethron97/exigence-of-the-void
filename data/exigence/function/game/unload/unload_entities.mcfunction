# Teleport game entities in preparation to kill

#====================================================================================================

# Kill all player bound entities
#   Warp preview, mirror reflection, 
execute as @e[tag=PlayerBound] run function exigence:player/utility/unload_player_bound

# Unload entity
#   Use distance, not volume, in case vexes flew out of map or something
execute in minecraft:overworld positioned -300 0 -300 as @e[type=#exigence:enemy,distance=..1000] run function exigence:misc/entity/unload_entity
#   Automatically calls kill_unloaded_entities 1 tick later