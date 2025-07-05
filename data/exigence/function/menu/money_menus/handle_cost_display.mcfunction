# Handles steps to create a new cost display for an item display
#   Called by money_menu_tick

## CONSTRAINTS
#   ItemDisplay

#=============================================================================================================

function exigence:menu/item_display/item_shop_display/cost_display/create with entity @s
execute as @s[tag=Artifact,tag=!IsResearched] run function exigence:menu/item_display/item_shop_display/cost_display/create_artifact with entity @s item.components."minecraft:custom_data"
function exigence:menu/item_display/item_shop_display/update_purchasability with entity @s item.components."minecraft:custom_data"
