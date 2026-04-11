# An outgoign invittation was declined

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#====================================================================================================

#say (D3) Cancel invite from leave

# Call the full cancel function from the player node
$scoreboard players set #target player.node.invite_sent_to $(head_player_id)
scoreboard players set #from_ Temp 2
scoreboard players operation #compare IDID = @s IDID
$execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,scores={profile.node.player_id=$(player_id)},tag=PlayerNode,limit=1] \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/cancel_only
