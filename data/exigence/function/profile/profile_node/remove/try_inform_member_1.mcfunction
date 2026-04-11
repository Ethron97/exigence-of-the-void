# Called by inform_coop_members

## CONSTRAINTS
#   AS profile node

#====================================================================================================

#say (D3) Try inform member 1

data modify storage exigence:temp profile_identifier set from entity @s data.custom_data.profile_identifier

scoreboard players operation #compare295 profile.node.player_id = @s profile.node.player_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s profile.node.player_id = #compare295 profile.node.player_id run function exigence:profile/profile_node/remove/try_inform_member_2 with storage exigence:temp
