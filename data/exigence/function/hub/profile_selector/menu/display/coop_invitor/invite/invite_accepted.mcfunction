# An outgoign invittation was declined

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#=============================================================================================================

say Invite accepted

# Call the full cancel function from the player node
$execute in exigence:profile_data positioned 8 0 8 as @n[distance=..20,type=armor_stand,tag=PlayerNode,scores={profile.node.player_id=$(player_id)}] \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/accept

# Switch slot from Pending back to player head selection
function exigence:hub/profile_selector/menu/display/player_head/calls/private/switch_from_pending with entity @s item.components."minecraft:custom_data"

# Call "confirm button update"
execute at @s as @n[distance=..5,type=item_display,tag=CoopInvitorDisplay,tag=Confirm] run function exigence:hub/profile_selector/menu/display/coop_invitor/effects/update_confirm_button
