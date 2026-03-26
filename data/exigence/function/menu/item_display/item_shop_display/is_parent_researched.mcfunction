# Called by is_parents_researched

## CONSTRAINTS
#   AS item_display to check

## INPUT
#   item_name - Of parent to check for

#====================================================================================================

#execute if score #ttttt Temp matches 1 run say ???
#$say Check for parent $(item_name)
#data modify storage exigence:temp shop_unlocked set from storage exigence:shop shop_unlocked

$execute if data storage exigence:shop {shop_unlocked:['$(item_name)']} run tag @s add IsParentResearched
