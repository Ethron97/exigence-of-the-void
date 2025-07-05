# Drops item in specific inventory slot

## CONSTRAINTS
#   AS player
#   AT DeathMarker

## INPUT
#   STR slot_name - ie 'armor.body' ... 'inventory.0' ... etc

#==============================================================================================================

# DEBUG
$say Drop slot $(slot_name)

# Summon new template item
loot spawn ~ ~ ~ loot exigence:blank_item

# Add local tag
tag @e[distance=..10,type=minecraft:item,nbt={Item:{id:"minecraft:stone"}}] add JustDropped

# Copy data from inventory slot to template item
$execute run item replace entity @e[distance=..10,type=minecraft:item,tag=JustDropped] contents from entity @s $(slot_name)

# If important, call subfunction
execute as @e[distance=..10,type=minecraft:item,tag=JustDropped] if items entity @s contents #exigence:important run function exigence:player/drop/dropped_important

# Clear template slot
$item replace entity @s $(slot_name) with air

# Remove local tag
tag @e[distance=..10,type=minecraft:item,tag=JustDropped] remove JustDropped
