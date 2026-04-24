# Relay function to swap as/at to call the generated function more efficiently

## CONSTRAINTS
#   AS player
#   AT profile node

#====================================================================================================

say (D3) Call grant advancements from scores

tag @s add GrantingLocal
execute as @n[type=minecraft:marker,tag=ProfileNode,distance=..0.01] at @a[tag=GrantingLocal,limit=1] run function exigence:scoreboard/generated_functions/grant_advancements_from_scores
tag @s remove GrantingLocal