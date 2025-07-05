# Handles calling sub-parent connection calls

## CONSTRAINTS
# AS item_display

#=============================================================================================================

# DEBUG
#say connect parents
#execute if data entity @s item.components."minecraft:custom_data".parents[0] run say Has 1 parent
#execute if data entity @s item.components."minecraft:custom_data".parents[1] run say Has 2 parents
#execute if data entity @s item.components."minecraft:custom_data".parents[2] run say Has 3 parents
#execute if data entity @s item.components."minecraft:custom_data".parents[3] run say Has 4 parents
#execute if data entity @s item.components."minecraft:custom_data".parents[4] run say Has 5 parents

# Execute each parent call if data exists
data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[0]
execute if data entity @s item.components."minecraft:custom_data".parents[0] run function exigence:menu/item_display/item_shop_display/connect_parent with storage exigence:menu

data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[1]
execute if data entity @s item.components."minecraft:custom_data".parents[1] run function exigence:menu/item_display/item_shop_display/connect_parent with storage exigence:menu

data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[2]
execute if data entity @s item.components."minecraft:custom_data".parents[2] run function exigence:menu/item_display/item_shop_display/connect_parent with storage exigence:menu

data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[3]
execute if data entity @s item.components."minecraft:custom_data".parents[3] run function exigence:menu/item_display/item_shop_display/connect_parent with storage exigence:menu

data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[4]
execute if data entity @s item.components."minecraft:custom_data".parents[4] run function exigence:menu/item_display/item_shop_display/connect_parent with storage exigence:menu

data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[5]
execute if data entity @s item.components."minecraft:custom_data".parents[5] run function exigence:menu/item_display/item_shop_display/connect_parent with storage exigence:menu
