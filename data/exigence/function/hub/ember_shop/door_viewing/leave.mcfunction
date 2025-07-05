# Called by try_leave

## CONSTRAINTS
# AS player

#=============================================================================================================

# DEBUG
say Leave ember viewing full

# Teleport
execute at @s run tp @s ~1 ~ ~

# Play warp sound
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Save chest
execute as @s run function exigence:hub/ember_shop/private/save_chest

# Teleport any coop viewers out as well
execute as @a[tag=CoopViewing] run tp @s -260.5 17 -44.5
tag @a[tag=CoopViewing] remove CoopViewing

# Remove tag
team leave @a[tag=EmberViewing]
tag @a[tag=EmberViewing] remove EmberViewing
