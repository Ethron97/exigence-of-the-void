# Convert node from armorstand to marker

## CONSTRAINTS
#   AS altar node
#   AT altar node

#=============================================================================================================
execute unless entity @s[distance=..1,tag=AltarNode,type=armor_stand,tag=!Converted] run return 1
#=============================================================================================================

# MARK THIS ARMORSTAND NODE AS CONVERTED
tag @s add Converted

# Summon marker
summon marker ~ ~ ~ {Tags:["NewMarker"]}

# Copy scores
#   These will get captured in "copy data" step if we migrate them all to data before converting
scoreboard players operation @n[distance=..0.01,type=marker,tag=NewMarker] NodeID = @s NodeID
scoreboard players operation @n[distance=..0.01,type=marker,tag=NewMarker] ObjectLevel = @s ObjectLevel
execute if score @s VaultID matches 1.. run scoreboard players operation @n[distance=..0.01,type=marker,tag=NewMarker] VaultID = @s VaultID

# Copy data
data modify entity @n[distance=..0.01,type=marker,tag=NewMarker] data.custom_data set from entity @s data.custom_data

# Team?
team join Special @n[distance=..0.01,type=marker,tag=NewMarker]

# Copy tags (also removes local tag)
data modify entity @n[distance=..0.01,type=marker,tag=NewMarker] Tags set from entity @s Tags
