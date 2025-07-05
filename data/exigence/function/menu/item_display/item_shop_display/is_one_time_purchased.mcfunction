# Called when shop is loaded and when player researches something

## CONSTRAINTS
#   AS item_display to check

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#=============================================================================================================

tag @s remove IsOneTimePurchased

$execute if data storage exigence:shop {one_time_purchased:['$(item_name)']} run tag @s add IsOneTimePurchased
