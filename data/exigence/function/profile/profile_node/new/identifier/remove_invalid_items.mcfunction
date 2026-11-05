# Remove from array based on profiles of this player

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3) Remove invalid icons

scoreboard players operation #compare profile.node.player_id = @s career.player_id

execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] if score @s profile.node.player_id = #compare profile.node.player_id \
run function exigence:profile/profile_node/new/identifier/private/try_remove_item with entity @s data.custom_data.profile_icon
