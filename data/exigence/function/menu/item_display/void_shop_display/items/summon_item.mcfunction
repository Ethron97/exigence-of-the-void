## CONSTRAINTS
# AT where to summon

## INPUT
#   STR item_name - simple name to match the directory

## OUTPUT
#   minecraft:item entity summoned

#=============================================================================================================

# Summon blank item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["NVS"]}

# Call data function as that item (function is called summon from before we frontloaded the item summon)
$execute as @e[distance=..1,type=item,tag=NVS,limit=1] run function exigence:menu/item_display/void_shop_display/items/$(item_name)/summon with storage exigence:colors
execute as @e[distance=..1,type=item,tag=NVS,limit=1] run data modify entity @s Item.components."minecraft:tooltip_display" set value \
{hidden_components:["unbreakable","enchantments","attribute_modifiers","potion_contents","trim","dyed_color"]}
