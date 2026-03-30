# Connect parent #

## CONSTRAINTS
#   AS item display

#====================================================================================================

execute unless data entity @s item.components."minecraft:custom_data".parents[1] run say I don't have a parent? (1)
data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[1]
function exigence:menu/item_display/item_shop_display/parent/connect/connect_parent with storage exigence:menu

function exigence:menu/item_display/item_shop_display/parent/connect/connect_1