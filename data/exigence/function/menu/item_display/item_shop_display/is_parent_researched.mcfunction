# Called by is_parents_researched

## CONSTRAINTS
#   AS item_display to check

## INPUT
#   item_name - Of parent to check for

#=============================================================================================================

$execute if data storage exigence:shop {shop_unlocked:['$(item_name)']} run tag @s add IsParentResearched
