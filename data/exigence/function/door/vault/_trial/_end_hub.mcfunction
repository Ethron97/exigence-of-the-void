# End hub

## CONSTRAINTS
#   AS player (tag=Hub)

#====================================================================================================

# DEBUG
execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Hub trial end

# Reset vault code
scoreboard players reset @s game.player.vault_code

# Set gamemode creative if hub admin
gamemode creative @s[tag=Admin]

# Save inventory to profile node
tag @s add LoadingInventory
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
execute if score @s profile.player.profile_id matches 1.. in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.player.profile_id at @s as @p[tag=LoadingInventory] run execute positioned ~1 ~ ~ run function exigence:profile/profile_node/load/load_inventory
tag @s remove LoadingInventory
