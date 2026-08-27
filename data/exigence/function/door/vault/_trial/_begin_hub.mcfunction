# Generic begin function for trials
#   Handles repeated code that doesn't change between the different trials

## CONSTRAINTS
#   AS player

#====================================================================================================

# DEBUG
execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Begin trial generic (hub)

# Play teleport sound
execute at @s run playsound minecraft:entity.player.teleport player @s ~ ~ ~ 1 1

# Begin sound
execute at @s run playsound minecraft:block.trial_spawner.about_to_spawn_item ambient @s ~ ~1000 ~ 1000 0.8

# Save inventory to profile node
#tellraw @s [{text:"Your items will be returned after the trial",color:"gray",italic:true}]
tag @s add SavingInventory
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
execute if score @s profile.player.profile_id matches 1.. in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.player.profile_id at @s as @p[tag=SavingInventory] run execute positioned ~1 ~ ~ run function exigence:profile/profile_node/save/save_inventory
tag @s remove SavingInventory
clear @s[scores={profile.player.profile_id=1..}]
