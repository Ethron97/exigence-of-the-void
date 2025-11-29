# Cancel an ongoing invitation, from shift clicking the pending head

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#=============================================================================================================

say Cancel invite from menu-cancel

$execute as @a[scores={career.player_id=$(head_player_id)}] run function exigence:misc/triggers/hub/invite_coop_decline
