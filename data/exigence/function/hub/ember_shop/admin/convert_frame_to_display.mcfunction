# Used to convert item frame to item display (less laggy)

## CONSTRAINTS
#   AS/AT item frame (or glow item frame)
#   WIHT item in it

#====================================================================================================
execute unless entity @s[distance=..1] run return fail
#----------------------------------------------------------------------------------------------------

summon minecraft:item_display ~ ~ ~ {Tags:["LibraryDisplay","NewLibraryDisplay"],Rotation:[0.0f,0.0f],billboard:"fixed",\
item:{id:"minecraft:stone",count:1},brightness:{sky:15,block:15},\
transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}}

# Copy item
data modify entity @n[type=minecraft:item_display,tag=NewLibraryDisplay,distance=..0.1] item set from entity @s Item

# Copy rotation
data modify entity @n[type=minecraft:item_display,tag=NewLibraryDisplay,distance=..0.1] Rotation set from entity @s Rotation

# Remove local tag
tag @n[type=minecraft:item_display,tag=NewLibraryDisplay,distance=..0.1] remove NewLibraryDisplay