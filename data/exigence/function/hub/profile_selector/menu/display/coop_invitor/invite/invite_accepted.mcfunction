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

# Shift menu depending on number of total invited players
#   IF total players < max coop players global setting
#       Switch slot from Pending back to player head selection
execute if score #filled_slots Temp < max_coop_players global_settings run function exigence:hub/profile_selector/menu/display/player_head/calls/private/switch_from_pending_to_head with entity @s item.components."minecraft:custom_data"
#   ELSE (total players = max coop players global setting)
#       Remove pending display and do NOT display player head selection; instead, shift the confirm button / player list down so it is more clear.
execute if score #filled_slots Temp = max_coop_players global_settings run function exigence:hub/profile_selector/menu/display/player_head/calls/private/switch_from_pending_to_confirm with entity @s item.components."minecraft:custom_data"

# Call "confirm button update"
execute at @s as @n[distance=..5,type=item_display,tag=CoopInvitorDisplay,tag=Confirm] run function exigence:hub/profile_selector/menu/display/coop_invitor/effects/update_confirm_button

execute at @s run playsound entity.player.levelup player @a ~ ~ ~ 1 1
