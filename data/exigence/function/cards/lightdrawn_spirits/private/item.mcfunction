# Pickup item around player from card play

## CONSTRAINTS
#   AS item
#   AT player

#====================================================================================================

# Add tag to prevent double count
tag @s add Pickup

# Increase counter by 1
scoreboard players add @p[scores={dead=0},tag=ActivePlayer,distance=..1] Temp 1

# Teleport item to player
tp @s ~ ~ ~
