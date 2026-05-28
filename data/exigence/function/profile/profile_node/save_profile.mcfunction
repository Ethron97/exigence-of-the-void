# All functionality for saving a profile

## CONSTRAINTS
#   AS player
#   IN exigence:profile_data

## INPUT
#   INT profile_id

#====================================================================================================
execute unless dimension exigence:profile_data run return run tellraw @a {text:"(C) Not run in profile_data dimension, aborting",color:"red"}
#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 2.. run say (D2) Save profile

tag @s add SavingProfile

# Save inventory to chests
$execute at @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.profile_id=$(profile_id)},tag=ProfileNode] positioned ~1 ~ ~ run function exigence:profile/profile_node/save/save_inventory

# Save scoreboards

# If co-op profile, inform fellow co-op members that you switch off it
$execute if score @s profile.player.coop_profile_id matches 1.. as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,scores={profile.node.profile_id=$(profile_id)}\
,tag=ProfileNode,limit=1] run function exigence:profile/profile_node/private/inform_saved_profile with entity @s data.custom_data

tag @s remove SavingProfile
