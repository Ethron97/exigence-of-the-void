# Convert node from armorstand to marker

## CONSTRAINTS
#   AS/AT altar node

#====================================================================================================
execute unless entity @s[distance=..1,tag=AltarNode,type=minecraft:armor_stand,tag=!Converted] run return 1
#====================================================================================================

# MARK THIS ARMORSTAND NODE AS CONVERTED
tag @s add Converted

# Summon marker
summon minecraft:marker ~ ~ ~ {Tags:["NewMarker"],CustomName:{text:"Marker | AltarNode"}}

# Copy scores
#   These will get captured in "copy data" step if we migrate them all to data before converting
scoreboard players operation @n[type=minecraft:marker,tag=NewMarker,distance=..0.01] node.id = @s node.id
scoreboard players operation @n[type=minecraft:marker,tag=NewMarker,distance=..0.01] ObjectLevel = @s ObjectLevel

# Copy data
data modify entity @n[type=minecraft:marker,tag=NewMarker,distance=..0.01] data.custom_data set from entity @s data.custom_data

# Team
team join Special @n[type=minecraft:marker,tag=NewMarker,distance=..0.01]

# Copy tags (also removes local tag)
data modify entity @n[type=minecraft:marker,tag=NewMarker,distance=..0.01] Tags set from entity @s Tags
