## CONSTRAINTS
# AT where to summon

## INPUT
#   STR item_name - simple name to match the directory

## OUTPUT
#   minecraft:item entity summoned

#====================================================================================================

# Summon blank item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["NVS"]}

# Call data function as that item (function is called summon from before we frontloaded the item summon)
$execute as @n[type=minecraft:item,tag=NVS,distance=..0.1] run function exigence:menu/item_display/void_shop_display/items/$(item_name)/summon with storage exigence:colors
#execute as @n[type=minecraft:item,tag=NVS,distance=..0.1] run data modify entity @s Item.components."minecraft:tooltip_display" set value \
{hidden_components:["enchantments","attribute_modifiers","potion_contents","trim","dyed_color"]}

execute as @n[type=minecraft:item,tag=NVS,distance=..1] if items entity @s container.* netherite_nautilus_armor \
run data modify entity @s Item.components."minecraft:tooltip_display".hidden_components set value ["attribute_modifiers"]

# If armor
execute as @n[type=minecraft:item,tag=NVS,distance=..1] if items entity @s container.* #exigence:armor \
run function exigence:menu/item_display/void_shop_display/items/void_armor_data
