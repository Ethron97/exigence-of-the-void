# Convert this node from armor stand to marker

## CONSTRAINTS
#   AS/AT menace node

#====================================================================================================
execute if entity @s[type=minecraft:armor_stand,tag=MenaceNode,tag=Converted] run return run tellraw @a [{text:"TRIED TO CONVERT ALREADY CONVERTED MenaceNode NODE",color:"red"}]
execute if entity @s[type=minecraft:armor_stand,tag=!MenaceNode] run return run tellraw @a [{text:"TRIED TO CONVERT NON-MenaceNode NODE",color:"red"}]
execute unless entity @s[type=minecraft:armor_stand,tag=MenaceNode,distance=..0.01] run return run tellraw @a [{text:"TRIED TO CONVERT NOT @AT MenaceNode NODE",color:"red"}]
#----------------------------------------------------------------------------------------------------

# MARK THIS ARMORSTAND NODE AS CONVERTED
tag @s add Converted

execute align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["NewNode","Node","MenaceNode"],CustomName:{text:"Marker | MenaceNode",color:"dark_purple",italic:false}}

# Put object level into name
execute if score @s node.property.object_level matches 1 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | MenaceNode <1>",color:"dark_purple",italic:false}
execute if score @s node.property.object_level matches 2 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | MenaceNode <2>",color:"dark_purple",italic:false}
execute if score @s node.property.object_level matches 3 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | MenaceNode <3>",color:"dark_purple",italic:false}
execute if score @s node.property.object_level matches 4 run data modify entity @e[type=minecraft:marker,tag=NewNode,distance=..1,limit=1] CustomName set value {text:"Marker | MenaceNode <4>",color:"dark_purple",italic:false}

# Assign team
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run team join Menace @s

# Copy object level
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.object_level = @s node.property.object_level
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.object_level int 1 run scoreboard players get @s node.property.object_level

# Copy tags
execute if entity @s[tag=WitherSkeleton] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add WitherSkeleton
execute if entity @s[tag=RavagerBlacklist] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add RavagerBlacklist
execute if entity @s[tag=CreakingBlacklist] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add CreakingBlacklist

# Remove local tag
tag @e[type=minecraft:marker,tag=NewNode,distance=..1] remove NewNode
