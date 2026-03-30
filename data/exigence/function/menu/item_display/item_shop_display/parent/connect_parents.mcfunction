# Handles calling sub-parent connection calls

## CONSTRAINTS
#   AS item_display (with shop.frame.parents=1..)

#====================================================================================================

# DEBUG
#say Connect parents

# Entities take 1tick to load scoreboards when summoned in the same tick, so use #compare
execute store result score #compare shop.frame.parents run data get entity @s item.components."minecraft:custom_data".num_parents 1

# The functions are recursive, so we can save energy on the switch
execute if score #compare shop.frame.parents matches 1 run return run function exigence:menu/item_display/item_shop_display/parent/connect/connect_1
execute if score #compare shop.frame.parents matches 2 run return run function exigence:menu/item_display/item_shop_display/parent/connect/connect_2
execute if score #compare shop.frame.parents matches 3 run return run function exigence:menu/item_display/item_shop_display/parent/connect/connect_3
execute if score #compare shop.frame.parents matches 4 run return run function exigence:menu/item_display/item_shop_display/parent/connect/connect_4
execute if score #compare shop.frame.parents matches 5 run return run function exigence:menu/item_display/item_shop_display/parent/connect/connect_5
execute if score #compare shop.frame.parents matches 6 run return run function exigence:menu/item_display/item_shop_display/parent/connect/connect_6
