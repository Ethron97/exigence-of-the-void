# An outgoign invittation was declined

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#=============================================================================================================

say Cancel invite from decline

# Call the full cancel function from the player node
$scoreboard players set #target player.node.invite_sent_to $(head_player_id)
$execute in exigence:profile_data positioned 8 0 8 as @n[distance=..32,type=armor_stand,tag=PlayerNode,scores={profile.node.player_id=$(player_id)}] \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/cancel_only

# Switch slot from Pending back to player head selection
function exigence:hub/profile_selector/menu/display/player_head/calls/private/switch_from_pending with entity @s item.components."minecraft:custom_data"
