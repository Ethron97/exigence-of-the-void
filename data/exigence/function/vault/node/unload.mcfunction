# Unload vault node

## CONSTRAINTS
#   AS vault node

#====================================================================================================

# Remove tags
tag @s remove Opened
tag @s remove PickedUp

# Close
function exigence:vault/node/close

# Kill handle
execute at @s run kill @e[type=minecraft:item_display,tag=VaultHandle,distance=..5]
execute at @s run kill @e[type=minecraft:interaction,tag=VaultHandle,distance=..5]
# Kill key, if there
execute at @s run kill @e[type=minecraft:item_display,tag=VaultHandleKey,distance=..10]