# Data for item_display key that was entered

## CONSTRAINTS
#   AS ItemDisplay (NewDoorHandleKey)
#   AT handle

#======================================================================================================

# Interpolate to handle
teleport @s ^ ^ ^-0.28125 ~ ~

#data modify entity @s Rotation set from storage exigence:temp Rotation

# Copy vault handle ID (#compare was set from previous function)
scoreboard players operation @s VaultHandleID = #compare VaultHandleID

# Remove local tag
tag @s remove NewDoorHandleKey
