# Cancel an ongoing invitation, from shift clicking the pending head

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#=============================================================================================================

say Cancel invite from menu-cancel

# Call the full cancel function from the player node
#$scoreboard players set #target player.node.invite_sent_to $(head_player_id)
#$execute in exigence:profile_data positioned 8 0 8 as @n[distance=..32,type=armor_stand,tag=PlayerNode,scores={profile.node.player_id=$(player_id)}] \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/cancel_only

$execute as @a[scores={career.player_id=$(head_player_id)}] run say hi
$execute as @a[scores={career.player_id=$(head_player_id)}] run function exigence:misc/triggers/hub/invite_coop_decline
