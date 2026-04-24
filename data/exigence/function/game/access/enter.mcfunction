# Handle all player setup upon entering the dungeon

## CONSTRAINTS
#   AS player

#====================================================================================================

# Cleanup predungeon stuff
function exigence:hub/predungeon/access/migrate_to_game

tag @s add ActivePlayer

# Add primary player tag if index=1 (or 0, if solo)
tag @s[scores={profile.player.coop_profile_index=0..1}] add PrimaryPlayer

function exigence:scoreboard/generated_functions/reset_on_enter
function exigence:scoreboard/generated_functions/reset_on_death
function exigence:game/reset/reset_advancements
gamemode adventure @s
team join Player @s
#attribute @s minecraft:safe_fall_distance modifier remove exigence:safe_fall

# Set waypoint to not transmit (so coop players don't get confused seeing each other on it)
#   Spectators already don't appear on it, and the hub will be in a different world.
#attribute @s minecraft:waypoint_transmit_range base set 0

# Teleport to dungeon start
# TODO try and do some lining up / randomness based on where they stand in the predungeon room
execute in minecraft:overworld run tp @s -278.5 1.0 -120.5 135 0

# Clear hub effects
effect clear @s

# Give player exactly enough Hunger to reduce saturation to 5/20 (what it normally is after dying)
#   Hunger: Removes one saturation point every 40/level seconds. 3 seconds of 200 level = 15 saturation points gone.
effect give @s hunger 3 200 true
effect give @s minecraft:glowing infinite 0 true

# Load item modifiers
function exigence:game/load/modifiers/load_modifiers_0
function exigence:game/load/modifiers/load_modifiers_a
function exigence:game/load/modifiers/load_modifiers_b

# Setup puppet armorstand for hand holdin
# TODO
# Setup item preview display TODO
#function exigence:player/utility/setup_preview_display
# Initialize interaction: TODO
#execute as @a[tag=ActivePlayer] run function exigence:player/utility/interaction/get_interaction