# Handle refresh

## CONSTRAINTS
#   AS refresh button display

#====================================================================================================

# Call subfunction to save current chests to deck
execute if score @s hub.entity.profile_selector_id matches 1.. run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/profile_selector with entity @s item.components."minecraft:custom_data"
execute if score @s hub.entity.locker_room_id matches 1.. run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/locker_room with entity @s item.components."minecraft:custom_data"
execute if entity @s[tag=ItemShopAnalyzerDisplay] run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/item_shop with entity @s item.components."minecraft:custom_data"
# ...

# Call analyze
execute at @s run tag @p[distance=..9,tag=ProfileSelecting,tag=!RefreshSource] add RefreshSource
execute at @s as @p[distance=..9,tag=RefreshSource] run function exigence:deck/process/analyze_deck
execute at @s run tag @p[distance=..9,tag=RefreshSource] remove RefreshSource

# update displays
execute at @s as @n[distance=..9,type=marker,tag=DeckAnalyzer] run function exigence:hub/deck_analyzer/update_displays