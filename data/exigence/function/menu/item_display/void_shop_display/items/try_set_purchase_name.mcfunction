# If item does not have a purchase name set, copy item name to purchase name

## CONSTRAINTS
    # AS item

#====================================================================================================

execute unless data entity @s Item.components."minecraft:custom_data".item_name_purchase \
run data modify entity @s Item.components."minecraft:custom_data".item_name_purchase set from entity @s Item.components."minecraft:custom_data".item_name