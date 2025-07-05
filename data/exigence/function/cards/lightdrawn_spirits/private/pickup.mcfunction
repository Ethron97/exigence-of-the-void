# Teleports glowing item to nearest player

## CONSTRAINTS
#   AS item that is glowing
#   AT player

#========================================================================================================

# Increase score of nearest player
scoreboard players add @a[tag=ActivePlayer,scores={dead=0},sort=nearest,limit=1] Temp 1

# Teleport
tp @s ~ ~ ~
