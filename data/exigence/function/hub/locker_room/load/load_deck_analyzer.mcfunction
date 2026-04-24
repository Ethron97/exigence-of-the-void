# Load deck analyzer for the locker room room

## CONSTRAINTS
#   AS/AT deck analyzer

## INPUT
#   SCORE #profile_id Temp
#   SCORE #coop_profile_id Temp

#====================================================================================================

#say (D3) Load deck analyzer [locker room]

# Call interface
#   INPUT: #profile_id Temp, #coop_profile_id Temp
function exigence:hub/deck_analyzer/load_deck_anaylzer

# Item Displays
scoreboard players operation @e[type=minecraft:item_display,tag=NewItemDisplay,distance=..10] hub.entity.locker_room_id = @s hub.entity.locker_room_id
#   Refresh button
execute store result entity @n[type=minecraft:item_display,tag=NewItemDisplay,tag=RefreshButton,distance=..10] item.components."minecraft:custom_data".locker_room_id int 1 run scoreboard players get @s hub.entity.locker_room_id
tag @e[type=minecraft:item_display,tag=NewItemDisplay,distance=..10] remove NewItemDisplay

# Edit text displays
scoreboard players operation @e[type=minecraft:text_display,tag=NewTextDisplay,distance=..10] hub.entity.locker_room_id = @s hub.entity.locker_room_id
tag @e[type=minecraft:text_display,tag=NewTextDisplay,distance=..10] remove NewTextDisplay

# Edit block displays
scoreboard players operation @e[type=minecraft:block_display,tag=NewBlockDisplay,distance=..10] hub.entity.locker_room_id = @s hub.entity.locker_room_id
tag @e[type=minecraft:block_display,tag=NewBlockDisplay,distance=..10] remove NewBlockDisplay

# Call analyze
execute at @s as @n[type=minecraft:item_display,tag=RefreshButton,distance=..3] run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/refresh