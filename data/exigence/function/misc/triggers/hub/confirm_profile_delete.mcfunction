say Confirm profile delete

# Reset trigger score
scoreboard players set @s ProfileSelectorConfirmDelete 0

# No queried slot, return fail
execute unless score @s hub.player.query_selector_slot_id matches 1.. run return 1

# Store player_id + queried slot id
execute store result storage exigence:profile player_id int 1 run scoreboard players get @s career.player_id
execute store result storage exigence:profile profile_selector_id int 1 run scoreboard players get @s hub.player.profile_selector_id
execute store result storage exigence:profile slot_id int 1 run scoreboard players get @s hub.player.query_selector_slot_id

# Run confirm_delete with data
function exigence:hub/profile_selector/menu/display/profile/confirm_delete with storage exigence:profile