# Called by try_leave

## CONSTRAINTS
# AS player

#=============================================================================================================

# DEBUG
say Leave ember shopping full

# Teleport
execute at @s run tp @s ~1 ~ ~

# Play warp sound
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Save chest
execute as @s run function exigence:hub/ember_shop/private/save_chest

# Clear leftover embers
clear @s blaze_powder

# Teleport any coop shoopers out as well
execute as @a[tag=CoopEmberShopping] run tp @s -260.5 17 -44.5
tag @a[tag=CoopEmberShopping] remove CoopEmberShopping

# Remove tag
team leave @a[tag=EmberShopping]
tag @a[tag=EmberShopping] remove EmberShopping
