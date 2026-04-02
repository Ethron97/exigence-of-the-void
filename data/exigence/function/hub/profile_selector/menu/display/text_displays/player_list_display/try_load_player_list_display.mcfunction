# Check if player exists before loading text element

## CONSTRAINTS
#   AS slot display
#   AT location

## INPUT
#   INT coop_profile_id
#   INT player_index

#====================================================================================================

#$say Try load coop player list $(player_index) $(coop_profile_id)

data remove storage exigence:temp profile

scoreboard players reset #compare profile.node.player_id
$execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15\
,scores={profile.node.coop_profile_index=$(player_index),profile.node.coop_profile_id=$(coop_profile_id)},tag=ProfileNode,limit=1] \
run scoreboard players operation #compare profile.node.player_id = @s profile.node.player_id

execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #compare profile.node.player_id \
run data modify storage exigence:temp profile set from entity @s equipment.head.components."minecraft:profile"

$execute if data storage exigence:temp profile \
run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/load_player_list_display {num:$(player_index),coop_profile_id:$(coop_profile_id)}
