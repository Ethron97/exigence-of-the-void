# Called when player first indicates that they would like to delete a profile

## CONSTRAINTS
#   AS player

## INPUT
#   data: item.components."minecraft:custom_data"

#=============================================================================================================

#say Input delete

# Save score to "query"
$scoreboard players set @s hub.player.query_selector_slot_id $(slot_id)

# Enable triggers for player
#   If Confrim trigger is complete, run "profile_node/remove_profile" and reset the slot to blank
scoreboard players enable @s ProfileSelectorConfirmDelete
scoreboard players enable @s ProfileSelectorCancelDelete

# Show confirmation dialogue to player
#   If confirm, run Confirm trigger
#   If cancel, remove slot display from query
dialog show @s exigence:confirm_delete
