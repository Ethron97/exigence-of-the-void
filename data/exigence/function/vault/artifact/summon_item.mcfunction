## CONSTRAINTS
#   AT location

## INPUT
#   STR item_name - simple name to match the directory

#====================================================================================================

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glass",count:1},Tags:["NAS"]}

$execute as @n[type=item,tag=NAS,distance=..1] run function exigence:vault/artifact/artifacts/$(item_name)/summon with storage exigence:colors

data modify entity @n[type=item,tag=NAS,distance=..1] Item.components."minecraft:tooltip_display" set value \
{hidden_components:["unbreakable","enchantments","attribute_modifiers","potion_contents","trim","dyed_color"]}
