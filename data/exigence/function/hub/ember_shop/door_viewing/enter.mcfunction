# Called by try_enter

## CONSTRAINTS
# AS player

#=============================================================================================================

# DEBUG
say Enter ember viewing normal

# Add tag
tag @s add EmberViewing
team join EmberView @s

# Teleport
execute at @s run tp @s ~-1 ~ ~

# Play warp sound
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Make sure there are no buttons on the walls
function exigence:hub/ember_shop/reset

# Save player id (required to load chest)
scoreboard players operation #compare profile.profile_id = @s profile.profile_id

# Load deck
execute as @s run function exigence:hub/ember_shop/private/load_chest
