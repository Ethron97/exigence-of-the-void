# Relay function to swap as/at to call the generated function more efficiently

## CONSTRAINTS
#   AS player
#   AT profile node

#====================================================================================================

tag @s add GrantingLocal
execute as @n[distance=..0.01,type=marker,tag=ProfileNode] as @a[tag=GrantingLocal,limit=1] run function exigence:scoreboard/generated_functions/grant_advancements_from_scores
tag @s remove GrantingLocal