# Set slot = item contents

## CONSTRAINTS
#   AS player
#   AT item

## INPUT
#   STR slot_name

#====================================================================================================

$item replace entity @s $(slot_name) from entity @e[type=minecraft:item,tag=ForceGive,distance=..1,limit=1] contents
