# Called by door_tick when player steps into orange stained glass

## CONSTRAINTS
# AS player

#=============================================================================================================

# DEBUG
say Leave coop

# Teleport
execute at @s run tp @s ~-1 ~ ~

# Play warp sound
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Remove tag
tag @s remove ItemShopping
team leave @s
tag @s remove CoopShopping
