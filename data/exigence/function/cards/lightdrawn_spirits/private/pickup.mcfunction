# Teleports glowing item to nearest player

## CONSTRAINTS
#   AS item that is glowing
#   AT player

#====================================================================================================

# Increase score of nearest player
scoreboard players add @p[scores={dead=0},tag=ActivePlayer] Temp 1

# Teleport
tp @s ~ ~ ~
