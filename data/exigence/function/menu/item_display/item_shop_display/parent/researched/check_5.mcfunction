# Check if parent # is researched

## CONSTRAINTS
#   AS item display

#====================================================================================================

data modify storage exigence:menu item_name set from entity @s item.components."minecraft:custom_data".parents[4]
function exigence:menu/item_display/item_shop_display/parent/researched/is_parent_researched with storage exigence:menu

# Recursively check down
execute if entity @s[tag=!IsParentResearched] run function exigence:menu/item_display/item_shop_display/parent/researched/check_4