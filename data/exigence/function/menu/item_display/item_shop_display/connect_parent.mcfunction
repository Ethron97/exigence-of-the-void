# Handles connecting single parent

## CONSTRAINTS
# AS item_shop_display

## INPUT
#   STR item_name - item_name of the parent to connect to

#=============================================================================================================

# DEBUG
#$say connect parent $(item_name)

# Find target entity
$execute at @s run tag @e[nbt={item:{components:{"minecraft:custom_data":{item_name:'$(item_name)'}}}}] add DrawLineTo

# Draw line
execute at @s run function exigence:menu/item_display/item_shop_display/parent_line/create {texture:'minecraft:quartz_block',thickness:'0.05f',offset:'0.025f'}
