# Load deck analyzer for the profile selector room

## CONSTRAINTS
#   AS/AT deck analyzer

## INPUT
#   INT profile_id

#=============================================================================================================

say Load deck analyzer from profile selector room

# Call interface
#   If switching, just update the profile_id
$execute if score #switching Temp matches 1 run function exigence:hub/deck_analyzer/update_deck_analyzer_profile {profile_id:$(profile_id)}
#   Otherwise, load new
$execute unless score #switching Temp matches 1 run function exigence:hub/deck_analyzer/load_deck_anaylzer {profile_id:$(profile_id)}

# Edit button
scoreboard players operation @n[distance=..10,type=item_display,tag=NewItemDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id
execute store result entity @n[distance=..10,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".profile_selector_id int 1 run scoreboard players get @s hub.entity.profile_selector_id
tag @n[distance=..10,type=item_display,tag=NewItemDisplay] remove NewItemDisplay

# Edit text displays
scoreboard players operation @e[distance=..10,type=text_display,tag=NewTextDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id
tag @e[distance=..10,type=text_display,tag=NewTextDisplay] remove NewItemDisplay

# Edit block displays
scoreboard players operation @e[distance=..10,type=block_display,tag=NewBlockDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id
tag @e[distance=..10,type=block_display,tag=NewBlockDisplay] remove NewBlockDisplay

# Call analyze
execute at @s as @n[distance=..3,type=item_display,tag=RefreshButton] run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/refresh
