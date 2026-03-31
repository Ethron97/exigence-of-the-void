# Get player head information in temp storage

## CONSTRAINTS
#   AS player

## OUTPUT
#   exigence:temp player_head

#====================================================================================================

# Summon head item
execute in exigence:profile_data run loot spawn 0.5 1.0 2.5 loot exigence:get_player_head

# Store data
execute positioned 0.5 1.0 2.5 run data modify storage exigence:temp player_head set from entity @n[type=minecraft:item,distance=..2] Item

# Kill item
execute positioned 0.5 1.0 2.5 run kill @n[type=minecraft:item,distance=..2]
