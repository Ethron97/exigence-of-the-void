# Load deck analyzer for the locker room room

## CONSTRAINTS
#   AS marker (blank)
#   AT location (+facing)

## INPUT
#   SCORE #profile_id Temp
#   SCORE #coop_profile_id Temp
#   SCORE #input hub.locker_room_id

#====================================================================================================

#say (D3) Setup deck analyzer [locker room]

# Call interface-summon
function exigence:hub/deck_analyzer/setup_deck_analyzer_node

# Copy score(s)
scoreboard players operation @s hub.entity.locker_room_id = #input hub.locker_room_id

# Load load
#   INPUT: #profile_id Temp, #coop_profile_id Temp
execute as @s at @s run function exigence:hub/locker_room/load/load_deck_analyzer