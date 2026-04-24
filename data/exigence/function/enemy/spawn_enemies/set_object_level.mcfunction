# Called by setup enemy

## CONSTRAINTS
#   AS enemy

#====================================================================================================

# Silence wardens
execute as @s[type=minecraft:warden] run function exigence:enemy/warden/silence

# Set object level scores
scoreboard players set @s[tag=L1] game.entity.object_level 1
scoreboard players set @s[tag=L2] game.entity.object_level 2
scoreboard players set @s[tag=L3] game.entity.object_level 3
scoreboard players set @s[tag=L4] game.entity.object_level 4
