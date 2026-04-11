# Called from clicked

## CONSTRAINTS
#   AS slot item display

## INPUT
#   data

#====================================================================================================

#say (D3) Confirm coop creation

# Reset invite-sent scores
execute at @s run tag @p[tag=Interacting,distance=..16] remove InviteSent
execute at @s run tag @p[tag=Interacting,distance=..16] remove InvitesSent
execute at @s run scoreboard players reset @p[tag=Interacting,distance=..16] player.node.invite_sent_to

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
$execute in exigence:profile_data as @n[x=0,y=0,z=32,dx=15,dy=15,dz=15,scores={profile.node.player_id=$(player_id)},tag=PlayerNode] \
run function exigence:hub/profile_selector/menu/display/coop_invitor/calls/private/create_coop_profiles

# Reset saved profile.node.profile_id
scoreboard players reset #coop_profile_id Temp
scoreboard players reset #creating_coop Temp
scoreboard players set #player_index Temp 0

# Reset invite related scores
scoreboard players operation #compare career.player_id = @p[tag=ProfileSelecting,distance=..16] career.player_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s profile.node.player_id = #compare career.player_id run function exigence:profile/player_node/reset_invite_scores

# Re-summon all coop player lists (needed, but currently overkill)
function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/reload_all_displays