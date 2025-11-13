# Get the next head in order

## CONSTRAINTS
#   AT location

#=============================================================================================================

#say Next head

scoreboard players add #order_index Temp 1
# Use #index_order to get number of pages
scoreboard players operation #pages Temp = #order_index Temp
scoreboard players operation #pages Temp /= 3 number
scoreboard players add #pages Temp 1

# Get the next lowest player id
scoreboard players set #temp Temp 999999
execute as @e[distance=..16,type=item_display,tag=PlayerHeadDisplay,tag=!Ordered,tag=!Ignore] run scoreboard players operation #temp Temp < @s hub.entity.player_id

# Order the head that matches the lowest score
execute as @e[distance=..16,type=item_display,tag=PlayerHeadDisplay,tag=!Ordered,tag=!Ignore] if score @s hub.entity.player_id = #temp Temp run function exigence:hub/profile_selector/menu/display/player_head/order/order_head

# If there is still unordered displays, run again
execute if entity @n[distance=..16,type=item_display,tag=PlayerHeadDisplay,tag=!Ordered,tag=!Ignore] run function exigence:hub/profile_selector/menu/display/player_head/order/next_head
