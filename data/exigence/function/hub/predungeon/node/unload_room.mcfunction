# Unload all shop menus, called when player leaves the shop

## CONSTRAINTS
#   AT center of predungeon ( 0.5 209.0 104.5 )
#   IN exigence:hub

#====================================================================================================

# DEBUG
say Unload predungeon

fill 1 207 35 -1 209 35 minecraft:end_gateway

execute in exigence:hub positioned 0 153 0 as @n[distance=..1,type=marker,tag=RoomNode,scores={hub.room.room_type=2}] \
run scoreboard players operation #compare hub.entity.profile_id = @s hub.entity.profile_id

#====================================================================================================
# Get storage from chest contents
#   RETURNS: #chests_saved Temp
function exigence:hub/predungeon/load/save_chests

# Store data
scoreboard players set #remove_tag Temp 1
#   INPUT: #chests_saved Temp
execute in exigence:profile_data positioned 8 128 8 as @e[distance=..140,type=marker,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare hub.entity.profile_id at @s run function exigence:profile/profile_node/save/try_data_to_chest

#====================================================================================================

# Remove deck analyzer
kill @e[distance=..10,type=#exigence:display,tag=PredungeonAnalyzerDisplay]
kill @e[distance=..10,type=marker,tag=PredungeonAnalyzerDisplay]

# Remove interactions
function exigence:hub/predungeon/node/kill_all_interactions

# Unload predungeon menu
execute positioned ~ ~ ~5 run kill @n[distance=..5,type=marker,tag=PredungeonMenuNode]

execute positioned ~ ~ ~5 run kill @e[distance=..5,type=#exigence:display,tag=PredungeonDisplay]
execute positioned ~ ~ ~5 run kill @e[distance=..5,type=marker,tag=PredungeonDisplay]

# Remove all items off the ground (so other people can't pick them up when entering)
# TODO
#   Or, teleport all items to the player that left? But then what do we do on room kick?

# Clean up the warp stuff
kill @e[distance=..150,type=block_display,tag=schem_display]
