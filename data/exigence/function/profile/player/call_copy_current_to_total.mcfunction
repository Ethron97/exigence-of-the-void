# Relay function to swap as/at to call the generated function more efficiently

## CONSTRAINTS
#   AS player
#   AT profile node

#====================================================================================================

tag @s add CopyingLocal
execute as @n[distance=..0.01,type=marker,tag=ProfileNode] as @a[tag=CopyingLocal,limit=1] run function exigence:scoreboard/generated_functions/copy_current_to_total
tag @s remove CopyingLocal