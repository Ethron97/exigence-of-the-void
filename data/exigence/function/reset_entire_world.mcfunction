# No seriously, reset the ENTIRE world, scoreboards, profiles, etc.

# RESET_ALL (Called to completely refresh the gameworld, scoreboards, profiles, data, etc, to prepare for deployment and/or full reset for testing)
#	1. Save current PROPERTY scores to their respective entities
#	2. Drop scoreboards
#	3. Cleanup all profiles
#	4. Create scoreboards
#   5. Restore PROPERTY scores
#   6. Load default global settings
#   7. Re-create item shop entities
#   ?. Revoke all player advancements (todo?)

#====================================================================================================
execute if entity @e[type=minecraft:marker,tag=RoomNode] run return run say Cannot reset world while a room node exists
#----------------------------------------------------------------------------------------------------

say 1. Saving entity property scores to entity data
function exigence:scoreboard/save_score_to_property

say 2. Deleting scoreboards
function exigence:scoreboard/generated_functions/delete_scoreboards

say 3. Resetting profile/player data
execute in exigence:profile_data run function exigence:profile/profile_cleanup

say 4. Creating scoreboards
function exigence:scoreboard/generated_functions/create_scoreboards
scoreboard objectives modify game.cards_played displayname {text:"Cards Played"}
scoreboard objectives setdisplay sidebar.team.gold hub.player.consumable_limit
scoreboard objectives setdisplay sidebar.team.dark_purple hub.player.consumable_limit
scoreboard objectives modify hub.player.consumable_limit displayname {text:"Consumable Item Limit"}

say 5. Loading entity property scores from entity data
function exigence:scoreboard/load_score_from_property

say 6. Loading default global settings
function exigence:misc/setup_functions/initialize_global_settings

say 7. Recreating item shop
execute in exigence:hub positioned -43.5 200.0 0.5 run function exigence:hub/item_shop/recreate

# Prevent online players from needing to tp/remove tags (because when the scoreboard is replaced, it would detect null as != 0)
scoreboard players set @a quits 0
team leave @a

## Initialize scores
# Max attempts of a treasure node before giving up treasure drop
scoreboard players set #MaxTreasureDroppingIterations node.treasure.drop_working 10
# Delay after breaking ravager glass before it comes back
scoreboard players set cooldown.limit game.entity.ravager_glass.cooldown 20