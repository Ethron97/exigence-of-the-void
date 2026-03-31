# Drops item in specific inventory slot

## CONSTRAINTS
#   AS player
#   AT DeathMarker

## INPUT
#   STR slot_name - ie 'armor.body' ... 'inventory.0' ... etc

#====================================================================================================

# DEBUG
$say Drop slot $(slot_name)

# Summon new template item
loot spawn ~ ~ ~ loot exigence:blank_item

# Add local tag
tag @e[type=minecraft:item,distance=..10,nbt={Item:{id:"minecraft:stone"}}] add JustDropped

# Copy data from inventory slot to template item
$execute run item replace entity @e[type=minecraft:item,tag=JustDropped,distance=..10] contents from entity @s $(slot_name)

# If important, call subfunction
execute as @e[type=minecraft:item,tag=JustDropped,distance=..10] if items entity @s contents #exigence:important run function exigence:player/drop/dropped_important

# Clear template slot
$item replace entity @s $(slot_name) with air

# Remove local tag
tag @e[type=minecraft:item,tag=JustDropped,distance=..10] remove JustDropped
