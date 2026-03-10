# Unload specific menu tag

## CONSTRAINTS
#   AT location

## INPUT
#   STR menu_tag - tag of menu to unload

#====================================================================================================

# Delete display entities
$execute as @e[distance=..64,type=minecraft:item_display,tag=MenuDisplay,tag=$(menu_tag)] run function exigence:menu/item_display/delete with entity @s item.components."minecraft:custom_data"
