# Convert this node from armor stand to marker

## CONSTRAINTS
#   AS/AT echo node

#====================================================================================================
execute if entity @s[type=minecraft:armor_stand,tag=EchoNode,tag=Converted] run return run tellraw @a [{text:"TRIED TO CONVERT ALREADY CONVERTED ECHO NODE",color:"red"}]
execute if entity @s[type=minecraft:armor_stand,tag=!EchoNode] run return run tellraw @a [{text:"TRIED TO CONVERT NON-ECHO NODE",color:"red"}]
execute unless entity @s[type=minecraft:armor_stand,tag=EchoNode,distance=..0.01] run return run tellraw @a [{text:"TRIED TO CONVERT NOT @AT ECHO NODE",color:"red"}]
#----------------------------------------------------------------------------------------------------

# MARK THIS ARMORSTAND NODE AS CONVERTED
tag @s add Converted

summon minecraft:marker ~ ~ ~ {Tags:["NewNode","Node","EchoNode","EmberNode"],CustomName:{text:"Marker | EchoNode",color:"blue",italic:false}}

# Assign team
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run team join Echo @s

# Copy echo difficulty and save to data
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.echo.difficulty = @s EchoDifficulty
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.echo_difficulty int 1 run scoreboard players get @s node.property.echo.difficulty 

# Copy object level
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.object_level = @s ObjectLevel
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.object_level int 1 run scoreboard players get @s node.property.object_level

# Initialize other scores
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run scoreboard players set @s node.ember.embers_to_drop 0
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run scoreboard players set @s node.data.echo.times_chosen 0
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run scoreboard players set @s node.data.echo.times_won 0

# Assign new id
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run function exigence:misc/node/assign_node_id

# Remove local tag
tag @e[type=minecraft:marker,tag=NewNode,distance=..1] remove NewNode