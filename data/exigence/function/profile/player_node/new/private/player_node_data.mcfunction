# Assign data after summon to reduce selectors

## CONSTRAINTS
#   AS player node (new)

#====================================================================================================

# Assign player id
scoreboard players operation @s profile.node.player_id = #sequence career.player_id
scoreboard players set @s profile.node.player_is_online 1

# Copy data from item
execute positioned 0.5 1.5 32.5 run data modify entity @s equipment.head set from entity @n[type=minecraft:item,distance=..1] Item

# Copy name to name
data modify entity @s CustomName set from entity @s equipment.head.components."minecraft:profile".name

# Remove local tag
tag @s remove NewPlayerNode