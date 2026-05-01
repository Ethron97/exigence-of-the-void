# Convert this node from armor stand to marker

## CONSTRAINTS
#   AS/AT bookshelf node

#====================================================================================================
execute if entity @s[type=minecraft:armor_stand,tag=BookshelfNode,tag=Converted] run return run tellraw @a [{text:"TRIED TO CONVERT ALREADY CONVERTED BOOKSHELF NODE",color:"red"}]
execute if entity @s[type=minecraft:armor_stand,tag=!BookshelfNode] run return run tellraw @a [{text:"TRIED TO CONVERT NON-BOOKSHELF NODE",color:"red"}]
execute unless entity @s[type=minecraft:armor_stand,tag=BookshelfNode,distance=..0.01] run return run tellraw @a [{text:"TRIED TO CONVERT NOT @AT BOOKSHELF NODE",color:"red"}]
#----------------------------------------------------------------------------------------------------

# MARK THIS ARMORSTAND NODE AS CONVERTED
tag @s add Converted

summon minecraft:marker ~ ~ ~ {Tags:["NewNode","Node","BookshelfNode"],CustomName:{text:"Marker | BookshelfNode",color:"yellow",italic:false}}

# Put object level into name
execute if score @s node.property.object_level matches 1 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | BookshelfNode <1>",color:"yellow",italic:false}
execute if score @s node.property.object_level matches 2 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | BookshelfNode <2>",color:"yellow",italic:false}
execute if score @s node.property.object_level matches 3 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | BookshelfNode <3>",color:"yellow",italic:false}
execute if score @s node.property.object_level matches 4 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | BookshelfNode <4>",color:"yellow",italic:false}

# Assign team
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run team join Special @s

# Copy object level
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.object_level = @s node.property.object_level
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.object_level int 1 run scoreboard players get @s node.property.object_level

# Copy tags
execute if entity @s[tag=FacingEast] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add FacingEast
execute if entity @s[tag=FacingWest] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add FacingWest
execute if entity @s[tag=FacingNorth] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add FacingNorth
execute if entity @s[tag=FacingSouth] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add FacingSouth

# Remove local tag
tag @e[type=minecraft:marker,tag=NewNode,distance=..1] remove NewNode