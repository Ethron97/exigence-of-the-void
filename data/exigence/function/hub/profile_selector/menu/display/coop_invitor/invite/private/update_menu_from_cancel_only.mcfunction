# Update / shift menu from the cancel_only function based on
#  how the player left, and whether it was in "confirm" mode or not

## CONSTRAINTS
#   AS player head display

## INPUT
#   SCORE #from_ Temp; 1 = from decline, 2 = from leave

#=============================================================================================================

say Checking update menu from cancel-only

execute if score #from_ Temp matches 1 run function exigence:hub/profile_selector/menu/display/player_head/calls/private/switch_from_pending_to_head with entity @s item.components."minecraft:custom_data"
execute if score #from_ Temp matches 2 if score #filled_slots_old Temp = max_coop_players global_settings \
run function exigence:hub/profile_selector/menu/display/player_head/calls/private/switch_to_head_from_confirm with entity @s item.components."minecraft:custom_data"
