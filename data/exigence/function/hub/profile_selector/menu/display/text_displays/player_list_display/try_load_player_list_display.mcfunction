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
$execute in exigence:profile_data positioned 8 128 8 as @n[distance=..140,type=marker,tag=ProfileNode\
,scores={profile.node.coop_profile_index=$(player_index),profile.node.coop_profile_id=$(coop_profile_id)}] \
run scoreboard players operation #compare profile.node.player_id = @s profile.node.player_id

execute in exigence:profile_data positioned 8 0 8 as @e[type=armor_stand,tag=PlayerNode,distance=..32] if score @s profile.node.player_id = #compare profile.node.player_id \
run data modify storage exigence:temp profile set from entity @s equipment.head.components."minecraft:profile"

$execute if data storage exigence:temp profile \
run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/load_player_list_display {num:$(player_index),coop_profile_id:$(coop_profile_id)}
