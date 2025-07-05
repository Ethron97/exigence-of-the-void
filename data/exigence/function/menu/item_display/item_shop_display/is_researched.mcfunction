# Called when shop is loaded and when player researches something

## CONSTRAINTS
#   AS item_display to check

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#=============================================================================================================

tag @s remove IsResearched

$execute if data storage exigence:shop {shop_unlocked:['$(item_name)']} run tag @s add IsResearched
