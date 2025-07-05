# Called by use_item when player uses phantom membrane item

## CONSTRAINTS
# AS player

#=============================================================================================================

#say trigger phantom membrane

# Final validation of preview location
function exigence:player/use_item/phantom_membrane/private/update_preview

# If no VALID tag, we didn't find a node, so return
execute unless entity @e[type=block_display,tag=ItemPreview,tag=Updating,tag=Valid] at @s run function exigence:player/use_item/phantom_membrane/private/failed_use
execute unless entity @e[type=block_display,tag=ItemPreview,tag=Updating,tag=Valid] run return 1



# Playsound to leave behind
playsound minecraft:entity.phantom.ambient ambient @a ~ ~ ~ 1 1.0

# Teleport player to the preview location
execute at @e[type=block_display,tag=ItemPreview,tag=Updating] run tp @s ~ ~ ~

# Teleport the phantom membrane back to start
execute as @e[type=block_display,tag=ItemPreview,tag=Updating] run function exigence:player/use_item/phantom_membrane/private/reset_preview

# Remove local tag from update_preview function
tag @e[type=block_display,tag=ItemPreview,tag=Updating] remove Updating

# Playsound for player using it
playsound minecraft:entity.phantom.ambient ambient @s ~ ~100 ~ 1000 1.0

# Clear 
scoreboard players set #remove Temp 1
