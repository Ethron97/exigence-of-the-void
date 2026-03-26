# Run subfunction based on case

## CONSTRAINTS
#   AS refresh button display

#====================================================================================================

# Call subfunction to save current chests to deck
execute if score @s hub.entity.profile_selector_id matches 1.. run return run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/profile_selector with entity @s item.components."minecraft:custom_data"
execute if score @s hub.entity.locker_room_id matches 1.. run return run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/locker_room with entity @s item.components."minecraft:custom_data"
execute if entity @s[tag=ItemShopAnalyzerDisplay] run return run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/item_shop with entity @s item.components."minecraft:custom_data"
execute if entity @s[tag=PredungeonAnalyzerDisplay] run return run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/predungeon with entity @s item.components."minecraft:custom_data"
# ...