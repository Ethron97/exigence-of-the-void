# Unload all shop menus, called when players leave the ember shop

## CONSTRAINTS
#   AT center of ember_shop ( 45.5 209.0 0.5 )
#   IN exigence:hub

#====================================================================================================

# DEBUG
execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Unload ember shop

execute in exigence:hub as @n[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,scores={hub.room.room_type=5},tag=RoomNode] \
run scoreboard players operation #compare hub.entity.profile_id = @s hub.entity.profile_id

# Reset scores
scoreboard players set shop.loaded ember_shop 0
scoreboard players set shop.embers_to_spend ember_shop 0
# ...
# TODO modifier scores

#====================================================================================================
# Get storage from chest contents
#   RETURNS: #chests_saved Temp
function exigence:hub/ember_shop/load/save_chests

# Store data
scoreboard players set #remove_tag Temp 1
#   INPUT: #chests_saved Temp
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare hub.entity.profile_id at @s run function exigence:profile/profile_node/save/try_data_to_chest

#====================================================================================================

# Remove deck analyzer
kill @e[type=#exigence:display,tag=EmberShopAnalyzerDisplay,distance=..10]
kill @e[type=minecraft:marker,tag=EmberShopAnalyzerDisplay,distance=..10]

# Remove interactions
function exigence:hub/ember_shop/node/kill_all_interactions

# Unload predungeon menu
execute positioned ~5 ~ ~ run kill @n[type=minecraft:marker,tag=EmberShopMenuNode,distance=..5]

execute positioned ~5 ~ ~ run kill @e[type=#exigence:display,tag=EmberShopDisplay,distance=..5]
execute positioned ~5 ~ ~ run kill @e[type=minecraft:marker,tag=EmberShopDisplay,distance=..5]

# Reset library displays
function exigence:hub/ember_shop/menu/refresh/reset_library_displays
