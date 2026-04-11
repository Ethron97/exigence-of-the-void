# Remove from array based on profiles of this player

## CONSTRAINTS
#   AS player

#====================================================================================================

#say (D3) Get invalid identifiers

scoreboard players operation #compare profile.node.player_id = @s career.player_id

execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] if score @s profile.node.player_id = #compare profile.node.player_id \
run data modify storage exigence:temp invalid_identifiers append from entity @s data.custom_data.profile_identifier