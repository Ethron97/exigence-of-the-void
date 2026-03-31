# Load deck analyzer for the profile selector room

## CONSTRAINTS
#   AS/AT deck analyzer

## INPUT
#   SCORE #profile_id Temp
#   SCORE #coop_profile_id Temp

#====================================================================================================

say Load deck analyzer from profile selector room

# Call interface
#   If switching, just update the profile_id
execute if score #switching Temp matches 1 run function exigence:hub/deck_analyzer/update_deck_analyzer_profile
#   Otherwise, load new
#   INPUT #profile_id Temp, #coop_profile_id Temp
execute unless score #switching Temp matches 1 run function exigence:hub/deck_analyzer/load_deck_anaylzer

# Item Displays
scoreboard players operation @e[type=item_display,tag=NewItemDisplay,distance=..10] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id
#   Refresh button
execute store result entity @n[distance=..10,type=item_display,tag=NewItemDisplay,tag=RefreshButton] item.components."minecraft:custom_data".profile_selector_id int 1 run scoreboard players get @s hub.entity.profile_selector_id
tag @e[type=item_display,tag=NewItemDisplay,distance=..10] remove NewItemDisplay

# Edit text displays
scoreboard players operation @e[type=text_display,tag=NewTextDisplay,distance=..10] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id
tag @e[type=text_display,tag=NewTextDisplay,distance=..10] remove NewTextDisplay

# Edit block displays
scoreboard players operation @e[type=block_display,tag=NewBlockDisplay,distance=..10] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id
tag @e[type=block_display,tag=NewBlockDisplay,distance=..10] remove NewBlockDisplay

# Call analyze
execute at @s as @n[distance=..3,type=item_display,tag=RefreshButton] run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/refresh
