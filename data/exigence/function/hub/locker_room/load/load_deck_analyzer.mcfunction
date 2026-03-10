# Load deck analyzer for the locker room room

## CONSTRAINTS
#   AS/AT deck analyzer

## INPUT
#   INT profile_id

#====================================================================================================

$say Load deck analyzer from locker room room [profile:$(profile_id)]

# Call interface
$function exigence:hub/deck_analyzer/load_deck_anaylzer {profile_id:$(profile_id)}

# Item Displays
scoreboard players operation @e[distance=..10,type=item_display,tag=NewItemDisplay] hub.entity.locker_room_id = @s hub.entity.locker_room_id
#   Refresh button
execute store result entity @n[distance=..10,type=item_display,tag=NewItemDisplay,tag=RefreshButton] item.components."minecraft:custom_data".locker_room_id int 1 run scoreboard players get @s hub.entity.locker_room_id
tag @e[distance=..10,type=item_display,tag=NewItemDisplay] remove NewItemDisplay

# Edit text displays
scoreboard players operation @e[distance=..10,type=text_display,tag=NewTextDisplay] hub.entity.locker_room_id = @s hub.entity.locker_room_id
tag @e[distance=..10,type=text_display,tag=NewTextDisplay] remove NewTextDisplay

# Edit block displays
scoreboard players operation @e[distance=..10,type=block_display,tag=NewBlockDisplay] hub.entity.locker_room_id = @s hub.entity.locker_room_id
tag @e[distance=..10,type=block_display,tag=NewBlockDisplay] remove NewBlockDisplay

# Call analyze
execute at @s as @n[distance=..3,type=item_display,tag=RefreshButton] run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/refresh
