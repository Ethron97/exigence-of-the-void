# Called by set_object_levels, which is called 1 tick after spawn_enemies

## CONSTRAINTS
#   AS enemy

#==================================================================================================================

# Silence wardens
execute as @s[type=minecraft:warden] run function exigence:enemy/warden/silence

# Set object level scores
scoreboard players set @s[tag=L1] ObjectLevel 1
scoreboard players set @s[tag=L2] ObjectLevel 2
scoreboard players set @s[tag=L3] ObjectLevel 3
scoreboard players set @s[tag=L4] ObjectLevel 4
