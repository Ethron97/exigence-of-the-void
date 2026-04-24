# Relay function to swap as/at to call the generated function more efficiently

## CONSTRAINTS
#   AS player
#   AT profile node

#====================================================================================================

tag @s add CopyingLocal
execute as @n[type=minecraft:marker,tag=ProfileNode,distance=..0.01] as @a[tag=CopyingLocal,limit=1] run function exigence:scoreboard/generated_functions/copy_current_to_total
tag @s remove CopyingLocal