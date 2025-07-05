# Called by try_leave

## CONSTRAINTS
# AS player

#=============================================================================================================

# DEBUG
say Leave ember shopping coop

# Teleport
execute at @s run tp @s ~1 ~ ~

# Play warp sound
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Clear leftover embers
clear @s blaze_powder

# Remove tag
tag @s remove EmberShopping
team leave @s
tag @s remove CoopEmberShopping
