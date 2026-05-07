# Data for item_display key that was entered

## CONSTRAINTS
#   AS ItemDisplay (NewVaultHandleKey)
#   AT handle

#====================================================================================================

# Interpolate to handle
tp @s ^ ^ ^-0.1 ~ ~

# Copy vault handle ID (#compare was set from previous function)
#scoreboard players operation @s game.vault.handle.id = #compare game.vault.handle.id

# Set deleport duration to 30 for NEXT animation
data modify entity @s teleport_duration set value 30

# Remove local tag
tag @s remove NewVaultHandleKey
