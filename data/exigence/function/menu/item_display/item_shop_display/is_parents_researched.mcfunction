# Handles calling sub-parent is_researched calls
# Called when shop is loaded and when player researches something

## CONSTRAINTS
# AS item_display

#=============================================================================================================

# Reset tag
tag @s remove IsParentResearched

# Execute each parent call if data exists
data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[0]
execute if data entity @s item.components."minecraft:custom_data".parents[0] run function exigence:menu/item_display/item_shop_display/is_parent_researched with storage exigence:menu

data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[1]
execute if data entity @s item.components."minecraft:custom_data".parents[1] run function exigence:menu/item_display/item_shop_display/is_parent_researched with storage exigence:menu

data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[2]
execute if data entity @s item.components."minecraft:custom_data".parents[2] run function exigence:menu/item_display/item_shop_display/is_parent_researched with storage exigence:menu

data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[3]
execute if data entity @s item.components."minecraft:custom_data".parents[3] run function exigence:menu/item_display/item_shop_display/is_parent_researched with storage exigence:menu

data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[4]
execute if data entity @s item.components."minecraft:custom_data".parents[4] run function exigence:menu/item_display/item_shop_display/is_parent_researched with storage exigence:menu
