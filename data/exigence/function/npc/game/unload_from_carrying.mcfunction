# Called when a player escapes or dies while carrying an NPC

## CONSTRAINTS
#   AS villager

#====================================================================================================

# Teleport up
execute at @s run tp @s ~ ~1000 ~

# Then die
kill @s[type=minecraft:villager]