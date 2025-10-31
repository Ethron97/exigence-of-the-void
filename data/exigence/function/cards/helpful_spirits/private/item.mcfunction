# Pickup item around player from card play

## CONSTRAINTS
#   AS item

#========================================================================================================

# Add tag to prevent double count
tag @s add Pickup

# Increase counter by 1
scoreboard players add #temp Temp 1

# Teleport item to player
tp @s ~ ~ ~
