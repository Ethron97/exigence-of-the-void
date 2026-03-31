# Convert node from armorstand to marker

## CONSTRAINTS
#   AS altar node
#   AT altar node

#====================================================================================================
execute unless entity @s[distance=..1,tag=AltarNode,type=armor_stand,tag=!Converted] run return 1
#====================================================================================================

# MARK THIS ARMORSTAND NODE AS CONVERTED
tag @s add Converted

# Summon marker
summon minecraft:marker ~ ~ ~ {Tags:["NewMarker"],CustomName:{text:"Marker | AltarNode"}}

# Copy scores
#   These will get captured in "copy data" step if we migrate them all to data before converting
scoreboard players operation @n[type=marker,tag=NewMarker,distance=..0.01] NodeID = @s NodeID
scoreboard players operation @n[type=marker,tag=NewMarker,distance=..0.01] ObjectLevel = @s ObjectLevel
execute if score @s VaultID matches 1.. run scoreboard players operation @n[type=marker,tag=NewMarker,distance=..0.01] VaultID = @s VaultID

# Copy data
data modify entity @n[type=marker,tag=NewMarker,distance=..0.01] data.custom_data set from entity @s data.custom_data

# Team?
team join Special @n[type=marker,tag=NewMarker,distance=..0.01]

# Copy tags (also removes local tag)
data modify entity @n[type=marker,tag=NewMarker,distance=..0.01] Tags set from entity @s Tags
