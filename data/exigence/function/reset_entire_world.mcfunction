# No seriously, reset the ENTIRE world, scoreboards, profiles, etc.

# RESET_ALL (Called to completely refresh the gameworld, scoreboards, profiles, data, etc, to prepare for deployment and/or full reset for testing)
#	1. Save current PROPERTY scores to their respective entities
#	2. Drop scoreboards
#	3. Cleanup all profiles
#	4. Create scoreboards
#   5. Restore PROPERTY scores
#   6. Revoke all player advancements (todo?)

#=============================================================================================================

say Saving entity property scores to entity data
function exigence:scoreboard/save_score_to_property

say Deleting scoreboards
function exigence:scoreboard/generated_functions/delete_scoreboards

say Resetting profile/player data
execute in exigence:profile_data run function exigence:profile/profile_cleanup

say Creating scoreboards
function exigence:scoreboard/generated_functions/create_scoreboards
scoreboard objectives modify game.cards_played displayname {text:"Cards Played"}

say Loading entity property scores from entity data
function exigence:scoreboard/load_score_from_property
