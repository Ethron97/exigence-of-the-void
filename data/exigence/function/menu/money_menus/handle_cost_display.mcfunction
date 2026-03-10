# Handles steps to create a new cost display for an item display
#   Called by money_menu_tick

## CONSTRAINTS
#   AS ItemDisplay

#====================================================================================================

execute at @s run function exigence:menu/item_display/item_shop_display/cost_display/create with entity @s
execute as @s[tag=Artifact,tag=!IsResearched] at @s run function exigence:menu/item_display/item_shop_display/cost_display/create_artifact with entity @s item.components."minecraft:custom_data"
execute at @s run function exigence:menu/item_display/item_shop_display/update_purchasability with entity @s item.components."minecraft:custom_data"
