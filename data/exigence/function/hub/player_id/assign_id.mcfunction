# Call as player if they do not already have a player id
# If active player PlayerID is 0, give new id that is max + 1
say Assign PlayerID
scoreboard players set #highest PlayerID -1
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] run scoreboard players operation #highest PlayerID > @s PlayerID

# If highest is -1 (no nodes exist), create starting node
execute if score #highest PlayerID matches -1 positioned -265.5 -22.00 -53.5 run function exigence:hub/player_id/summon_player_node
execute if score #highest PlayerID matches -1 run scoreboard players set @e[type=armor_stand,tag=PlayerNode,scores={PlayerID=-1}] PlayerID 0
execute if score #highest PlayerID matches -1 run scoreboard players add #highest PlayerID 1

# Add local tag to old highest
execute as @e[type=armor_stand,tag=PlayerNode] run execute if score @s PlayerID = #highest PlayerID run tag @s add Current

scoreboard players add #highest PlayerID 1

# Summon new player node with the highest+1 id
execute at @e[type=armor_stand,tag=PlayerNode,tag=Current] positioned ~ ~ ~-2 run function exigence:hub/player_id/summon_player_node
# Remove local tag
tag @e[type=armor_stand,tag=PlayerNode,tag=Current] remove Current
# Reassign current tag to the newly created guy
execute as @e[type=armor_stand,tag=PlayerNode] at @s run execute if score @s PlayerID = #highest PlayerID run tag @s add Current

# Summon player head item at specified location
execute as @s run loot spawn -268.5 -22.00 -53.5 loot exigence:get_player_head

# Create sign
execute as @e[type=armor_stand,tag=PlayerNode,tag=Current] at @s run setblock ~-1 ~ ~ oak_sign[rotation=4]

# Copy data from item
execute as @e[type=armor_stand,tag=PlayerNode,tag=Current] at @s run data modify block ~-1 ~ ~ front_text.messages[0] set from entity @e[type=minecraft:item,x=-270,y=-22,z=-55,dx=1,dy=1,dz=1,limit=1] Item.components."minecraft:profile".Name
execute as @e[type=armor_stand,tag=PlayerNode,tag=Current] run data modify entity @s ArmorItems[3] set from entity @e[type=minecraft:item,x=-270,y=-22,z=-55,dx=1,dy=1,dz=1,limit=1] Item
execute as @e[type=armor_stand,tag=PlayerNode,tag=Current] run data modify entity @s CustomName set from entity @e[type=minecraft:item,x=-270,y=-22,z=-55,dx=1,dy=1,dz=1,limit=1] Item.components."minecraft:profile".Name

# Kill item
kill @e[type=minecraft:item,x=-270,y=-22,z=-55,dx=1,dy=1,dz=1,limit=1]

# Assign score to player
scoreboard players operation @s PlayerID = #highest PlayerID

# Fill blank chests
execute as @e[type=armor_stand,tag=PlayerNode,tag=Current] at @s run clone -261 -22 -53 -264 -22 -54 ~2 ~ ~

# Fill empty bookshelf
execute as @e[type=armor_stand,tag=PlayerNode,tag=Current] at @s run fill ~7 ~ ~ ~15 ~4 ~ minecraft:chiseled_bookshelf[facing=south]

# Remove local tag (again)
tag @e[type=armor_stand,tag=PlayerNode,tag=Current] remove Current