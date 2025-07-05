# Called by try_enter

## CONSTRAINTS
# AS player

#=============================================================================================================

# DEBUG
say Enter ember viewing coop

# Add tag
tag @s add EmberViewing
team join EmberView @s
tag @s add CoopViewing

# Teleport
execute at @s run tp @s ~-1 ~ ~

# Play warp sound
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1
