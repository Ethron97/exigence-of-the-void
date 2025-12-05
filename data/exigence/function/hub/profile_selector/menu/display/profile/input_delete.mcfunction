# Called when player first indicates that they would like to delete a profile

## CONSTRAINTS
#   AS player

## INPUT
#   data: item.components."minecraft:custom_data"

#=============================================================================================================

# Save score to "query"
$scoreboard players set @s hub.player.query_selector_slot_id $(slot_id)

# Enable triggers for player
#   If Confrim trigger is complete, run "profile_node/remove_profile" and reset the slot to blank
scoreboard players enable @s ProfileSelectorConfirmDelete
scoreboard players enable @s ProfileSelectorCancelDelete

# Show confirmation dialogue to player
#   If confirm, run Confirm trigger
#   If cancel, remove slot display from query
$scoreboard players set #temp Temp $(coop_profile_id)
#       If coop, use different language
execute if score #temp Temp matches 1.. run dialog show @s exigence:profile/confirm_leave
execute unless score #temp Temp matches 1.. run dialog show @s exigence:profile/confirm_delete
