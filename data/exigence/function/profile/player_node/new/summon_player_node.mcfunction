# Summon a new player node

## CONSTRAINTS
#   AT location

#====================================================================================================

summon minecraft:armor_stand ~ ~ ~ {Tags:["NewPlayerNode","PlayerNode"],Rotation:[90,0],ShowArms:true,data:{custom_data:{mail:[]}}}

# Assign player id
execute as @n[distance=..1,type=minecraft:armor_stand,tag=NewPlayerNode] run scoreboard players operation @s profile.node.player_id = #sequence career.player_id
execute as @n[distance=..1,type=minecraft:armor_stand,tag=NewPlayerNode] run scoreboard players set @s profile.node.player_is_online 1

# Copy data from item
execute as @n[distance=..1,type=minecraft:armor_stand,tag=NewPlayerNode] positioned 1.0 1.0 2.0 run data modify entity @s equipment.head set from entity @n[distance=..1,type=minecraft:item] Item

# Copy name to name
execute as @n[distance=..1,type=minecraft:armor_stand,tag=NewPlayerNode] run data modify entity @s CustomName set from entity @s equipment.head.components."minecraft:profile".name

# Remove local tag
tag @n[distance=..1,type=minecraft:armor_stand,tag=NewPlayerNode] remove NewPlayerNode
