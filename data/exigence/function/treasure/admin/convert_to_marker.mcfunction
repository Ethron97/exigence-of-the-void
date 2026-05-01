# Convert this node from armor stand to marker

## CONSTRAINTS
#   AS/AT treasure node

#====================================================================================================
execute if entity @s[type=minecraft:armor_stand,tag=TreasureNode,tag=Converted] run return run tellraw @a [{text:"TRIED TO CONVERT ALREADY CONVERTED TREASURE NODE",color:"red"}]
execute if entity @s[type=minecraft:armor_stand,tag=!TreasureNode] run return run tellraw @a [{text:"TRIED TO CONVERT NON-TREASURE NODE",color:"red"}]
execute unless entity @s[type=minecraft:armor_stand,tag=TreasureNode,distance=..0.01] run return run tellraw @a [{text:"TRIED TO CONVERT NOT @AT TREASURE NODE",color:"red"}]
#----------------------------------------------------------------------------------------------------

# MARK THIS ARMORSTAND NODE AS CONVERTED
tag @s add Converted

summon minecraft:marker ~ ~ ~ {Tags:["NewNode","Node","TreasureNode"],CustomName:{text:"Marker | TreasureNode",color:"gold",italic:false}}

# Assign team
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] run team join Treasure @s

# Copy object level
scoreboard players operation @e[type=minecraft:marker,tag=NewNode,distance=..1] node.property.object_level = @s node.property.object_level
execute as @e[type=minecraft:marker,tag=NewNode,distance=..1] store result entity @s data.custom_data.object_level int 1 run scoreboard players get @s node.property.object_level

# Copy BB
execute if entity @s[tag=TreasureNodeBox] run function exigence:treasure/admin/private/copy_bb_data
# Copy radius
execute if entity @s[tag=TreasureNodeWalk] run function exigence:treasure/admin/private/copy_radius_data

# Copy tags
execute if entity @s[tag=EmberSpecialTutorial] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add EmberSpecialTutorial
execute if entity @s[tag=KeyBlacklist] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add KeyBlacklist
execute if entity @s[tag=FlameBlacklist] run tag @e[type=minecraft:marker,tag=NewNode,distance=..1] add FlameBlacklist

# Remove local tag
tag @e[type=minecraft:marker,tag=NewNode,distance=..1] remove NewNode