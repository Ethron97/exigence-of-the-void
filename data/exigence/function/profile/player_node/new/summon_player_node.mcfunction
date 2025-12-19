# Summon a new player node

## CONSTRAINTS
#   AT location

#=============================================================================================================

summon minecraft:armor_stand ~ ~ ~ {Tags:["NewPlayerNode","PlayerNode"],Rotation:[90,0]}

# Assign player id
execute as @e[distance=..1,type=minecraft:armor_stand,tag=NewPlayerNode] run scoreboard players operation @s profile.node.player_id = #sequence career.player_id

# Copy data from item
execute as @e[distance=..1,type=minecraft:armor_stand,tag=NewPlayerNode] positioned 1.0 1.0 2.0 run data modify entity @s equipment.head set from entity @n[distance=..1,type=minecraft:item] Item

# Remove local tag
tag @e[distance=..1,type=minecraft:armor_stand,tag=NewPlayerNode] remove NewPlayerNode
