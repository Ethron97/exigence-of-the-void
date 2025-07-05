# Call at position
#   With {item_name:""}, simple name to match the directory

# Summon new blank item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["NAS"]}

$execute as @e[distance=..1,type=item,tag=NAS,limit=1] run function exigence:vault/artifact/artifacts/$(item_name)/summon with storage exigence:colors
execute as @e[distance=..1,type=item,tag=NAS,limit=1] run data modify entity @s Item.components."minecraft:tooltip_display" set value \
{hidden_components:["unbreakable","enchantments","attribute_modifiers","potion_contents","trim","dyed_color"]}
