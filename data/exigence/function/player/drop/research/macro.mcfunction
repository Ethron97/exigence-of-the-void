# Called by drop/research/drop

## CONSTRAINTS
#   AS player

## INPUT
#   INT amount

#=============================================================================================================

# Clear coins
$clear @s minecraft:prize_pottery_sherd $(amount)

# Spawn fragment with special data
loot spawn ~ ~ ~ loot exigence:fragment_dropped_on_death

# Modify data to set amount
$execute as @e[distance=..6,type=item,nbt={Item:{components:{"minecraft:custom_data":{dropped_on_death:'true'}}}}] run data modify entity @s Item.count set value $(amount)

# Clear dropped on death so it stacks
execute as @e[distance=..6,type=item,nbt={Item:{components:{"minecraft:custom_data":{dropped_on_death:'true'}}}}] run data remove entity @s Item.components."minecraft:custom_data"
