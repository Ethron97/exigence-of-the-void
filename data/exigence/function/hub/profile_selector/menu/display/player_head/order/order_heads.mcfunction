# Reassign order keys based on the current list of heads for this profile selector
#   Order in ascending order of player_code

## CONSTRAINTS
#   AT location

#====================================================================================================

#say Order heads

# Reset
tag @e[type=minecraft:item_display,tag=PlayerHeadDisplay,tag=Ordered,distance=..5] remove Ordered
tag @e[type=minecraft:item_display,tag=PlayerHeadDisplay,tag=Ordered,distance=..5] remove Pending
tag @e[type=minecraft:item_display,tag=PlayerHeadDisplay,tag=Ignore,distance=..5] remove Ignore
scoreboard players set @e[type=minecraft:item_display,tag=PlayerHeadDisplay,distance=..5] hub.entity.player_head_page 0
scoreboard players set @e[type=minecraft:item_display,tag=PlayerHeadDisplay,distance=..5] hub.entity.player_head_order 0
scoreboard players set #order_index Temp 0

# Mark heads for ignore, if their respective player was invited
execute as @e[type=item_display,tag=PlayerHeadDisplay,distance=..5] run function exigence:hub/profile_selector/menu/display/player_head/order/check_ignore with entity @s item.components."minecraft:custom_data"

# Start the iteration
function exigence:hub/profile_selector/menu/display/player_head/order/next_head
