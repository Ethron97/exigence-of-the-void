# Unload all shop menus, called when player leaves the shop

## CONSTRAINTS
#   AT center of predungeon ( 0.5 209.0 104.5 )
#   IN exigence:hub

#====================================================================================================

# DEBUG
#say (D3) Unload predungeon

fill 1 207 35 -1 209 35 minecraft:end_gateway

# Reset interior glass panes
fill -1 210 98 1 212 98 purple_stained_glass_pane[east=true,west=true,north=false,south=false,waterlogged=false]

execute in exigence:hub as @n[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=marker,scores={hub.room.room_type=2},tag=RoomNode] \
run scoreboard players operation #compare hub.entity.profile_id = @s hub.entity.profile_id

# Reset state
scoreboard players set #predungeon_state Temp 0

#====================================================================================================
# Get storage from chest contents
#   RETURNS: #chests_saved Temp
function exigence:hub/predungeon/load/save_chests

# Store data
scoreboard players set #remove_tag Temp 1
#   INPUT: #chests_saved Temp
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare hub.entity.profile_id at @s run function exigence:profile/profile_node/save/try_data_to_chest

#====================================================================================================

# Remove deck analyzer
kill @e[type=#exigence:display,tag=PredungeonAnalyzerDisplay,distance=..10]
kill @e[type=marker,tag=PredungeonAnalyzerDisplay,distance=..10]

# Remove interactions
function exigence:hub/predungeon/node/kill_all_interactions

# Unload predungeon menu
execute positioned ~ ~ ~5 run kill @n[type=marker,tag=PredungeonMenuNode,distance=..5]

execute positioned ~ ~ ~5 run kill @e[type=#exigence:display,tag=PredungeonDisplay,distance=..5]
execute positioned ~ ~ ~5 run kill @e[type=marker,tag=PredungeonDisplay,distance=..5]

# Clean up the warp stuff
kill @e[type=block_display,tag=schem_display,distance=..150]
