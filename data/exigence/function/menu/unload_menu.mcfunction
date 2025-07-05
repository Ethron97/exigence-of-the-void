# Unload specific menu tag

## CONSTRAINTS
#

## INPUT
#   STR menu_tag - tag of menu to unload

#=============================================================================================================

# Delete display entities
$execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=$(menu_tag)] run function exigence:menu/item_display/delete with entity @s item.components."minecraft:custom_data"

