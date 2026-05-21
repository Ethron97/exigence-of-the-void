# Called by remove_profile. Inform all other coop members that this player has left the coop profile.

## CONSTRAINTS
#   AS profile node

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3) Inform coop members

data modify storage exigence:temp name set from entity @s data.custom_data.name
data modify storage exigence:temp profile_identifier set from entity @s data.custom_data.profile_identifier

# For each other profile node that is active, try to inform the relevant player.
scoreboard players operation #player_left_id profile.node.player_id = @s profile.node.player_id
scoreboard players operation #compare profile.node.coop_profile_id_original = @s profile.node.coop_profile_id_original
scoreboard players operation #compare profile.node.profile_id = @s profile.node.profile_id

execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.coop_profile_id_original = #compare profile.node.coop_profile_id_original \
unless score @s profile.node.profile_id = #compare profile.node.profile_id \
run function exigence:profile/profile_node/remove/try_inform_member_1

# If all parties were online, good to go. Otherwise, make sure we keep this around.