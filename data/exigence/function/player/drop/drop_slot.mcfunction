# Drops item in specific inventory slot

## CONSTRAINTS
#   AS player

## INPUT
#   STR type 'inventory' or 'hotbar'
#   INT index 0-26 for inventory, 0-8 or hobat

#==============================================================================================================

# DEBUG
$say Drop slot $(type).$(index)

# Summon new template item
loot spawn ~ ~ ~ loot exigence:blank_item

# Add local tag
tag @e[distance=..10,type=minecraft:item,nbt={Item:{id:"minecraft:stone"}}] add JustDropped

# Copy data from inventory slot to template item
$item replace entity @e[distance=..10,type=minecraft:item,tag=JustDropped] contents from entity @s $(type).$(index)

# If important, call subfunction
execute as @e[distance=..10,type=minecraft:item,tag=JustDropped] if items entity @s contents #exigence:important run function exigence:player/drop/dropped_important

# Clear template slot
$item replace entity @s $(type).$(index) with air

# Remove local tag
tag @e[distance=..10,type=minecraft:item,tag=JustDropped] remove JustDropped
