# Called by inform_coop_members

## CONSTRAINTS
#   AS profile node

#====================================================================================================

say Try inform member 1

data modify storage exigence:temp profile_identifier set from entity @s data.custom_data.profile_identifier

scoreboard players operation #compare295 profile.node.player_id = @s profile.node.player_id
execute in exigence:profile_data positioned 8 0 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] \
if score @s profile.node.player_id = #compare295 profile.node.player_id run function exigence:profile/profile_node/remove/try_inform_member_2 with storage exigence:temp
