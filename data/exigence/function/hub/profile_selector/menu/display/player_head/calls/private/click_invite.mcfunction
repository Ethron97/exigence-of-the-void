# When you click a player head to invite them

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#=============================================================================================================

say Click invite

scoreboard players operation #compare hub.player_entity.query_idid = @s IDID

$tag @a[scores={career.player_id=$(player_id)},limit=1] add SendingInvite

scoreboard players set #successful_invite Temp 0
$execute as @a[scores={career.player_id=$(head_player_id)},limit=1] at @a[scores={career.player_id=$(player_id)},limit=1] \
if function exigence:hub/profile_selector/menu/display/coop_invitor/invite/try_send run scoreboard players set #successful_invite Temp 1

# If sent successfully, change out the menus:
execute if score #successful_invite Temp matches 1 run function exigence:hub/profile_selector/menu/display/player_head/calls/private/switch_to_pending with entity @s item.components."minecraft:custom_data"

$tag @a[scores={career.player_id=$(player_id)},limit=1] remove SendingInvite
