# Unload all shop menus, called when player leaves the shop

## CONSTRAINTS
#   AT center of item shop ( -43.5 200.0 0.5 )
#   IN exigence:hub

#====================================================================================================

# DEBUG
#say (D3) Unload item shop

# Cancel if any items are mid-load
scoreboard players set #cancel_item_shop_iterate Temp 1

# Any menu item that is loaded, tp back up to be "unloaded"
execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=Loaded,distance=..32] run function exigence:menu/item_display/item_shop_display/load/unload

execute in exigence:hub as @n[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,scores={hub.room.room_type=9},tag=RoomNode] \
run scoreboard players operation #compare hub.entity.profile_id = @s hub.entity.profile_id

#====================================================================================================
# Get storage from chest contents
#   RETURNS: #chests_saved Temp
execute positioned -27.5 200.0 0.5 run function exigence:hub/item_shop/load/save_chests

# Store data
scoreboard players set #remove_tag Temp 1
#   INPUT: #chests_saved Temp
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare hub.entity.profile_id at @s run function exigence:profile/profile_node/save/try_data_to_chest

#====================================================================================================

# Remove deck analyzer
execute positioned -27.5 200.0 0.5 run kill @e[type=#exigence:display,tag=ItemShopAnalyzerDisplay,distance=..8]
execute positioned -27.5 200.0 0.5 run kill @e[type=minecraft:marker,tag=ItemShopAnalyzerDisplay,distance=..8]

# Remove interactions
function exigence:hub/item_shop/node/kill_all_interactions

# Remove locked reason displays if they got orphaned
kill @e[type=minecraft:text_display,tag=LockedReasonDisplay,distance=..32]

# Remove all items off the ground (so other people can't pick them up when entering)
# TODO
#   Or, teleport all items to the player that left? But then what do we do on room kick?

