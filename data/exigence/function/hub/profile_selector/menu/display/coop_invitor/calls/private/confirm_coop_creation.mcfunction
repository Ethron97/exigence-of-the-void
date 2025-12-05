# Called from clicked

## CONSTRAINTS
#   AS slot item display

## INPUT
#   data

#=============================================================================================================

say Confirm coop creation

# Reset invite-sent scores
execute at @s run tag @p[distance=..16,tag=Interacting] remove InviteSent
execute at @s run scoreboard players reset @p[distance=..16,tag=Interacting] player.node.invite_sent_to

# Flag for profile creations
scoreboard players set #creating_coop Temp 1
scoreboard players set #player_index Temp 1
scoreboard players reset #coop_profile_id Temp

# Create profile for main player
data remove storage exigence:temp identifier
function exigence:hub/profile_selector/menu/display/profile/create_new with entity @s item.components."minecraft:custom_data"
#   OUTPUT: profile.node.profile_id of this profile
scoreboard players operation #coop_profile_id Temp = #sequence profile.player.profile_id

# Create profiles for co-op players
#   INPUT: Passing in SCORE #coop_profile_id Temp
$execute in exigence:profile_data positioned 8 3 8 as @n[distance=..32,type=armor_stand,tag=PlayerNode,scores={profile.node.player_id=$(player_id)}] \
run function exigence:hub/profile_selector/menu/display/coop_invitor/calls/private/create_coop_profiles

# Reset saved profile.node.profile_id
scoreboard players reset #coop_profile_id Temp
scoreboard players reset #creating_coop Temp
scoreboard players set #player_index Temp 0

# Reset invite related scores
scoreboard players operation #compare career.player_id = @p[distance=..16,tag=ProfileSelecting] career.player_id
execute in exigence:profile_data positioned 8 0 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] \
if score @s profile.node.player_id = #compare career.player_id run function exigence:profile/player_node/reset_invite_scores