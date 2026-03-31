# Teleports glowing item to nearest player

## CONSTRAINTS
#   AS item that is glowing
#   AT player

#====================================================================================================

# Increase score of nearest player
scoreboard players add @a[scores={dead=0},tag=ActivePlayer,sort=nearest,limit=1] Temp 1

# Teleport
tp @s ~ ~ ~
