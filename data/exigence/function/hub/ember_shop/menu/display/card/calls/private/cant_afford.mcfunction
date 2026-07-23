# called by update purchasability

## CONSTRAINTS
#   AS cost_display

#====================================================================================================

data modify entity @s item.components."minecraft:custom_data".ember_cost_color set value "red"
team join Red @s