# Handle refresh

## CONSTRAINTS
#   AS refresh button display

#====================================================================================================

# Call triage function to save chests depending on which room this is in
function exigence:hub/deck_analyzer/refresh_button/calls/refresh/_case

# Call deck analyze as (main) profile node
scoreboard players operation #compare hub.entity.profile_id = @s hub.entity.profile_id
execute if score @s hub.entity.coop_profile_id matches 1.. run scoreboard players operation #compare hub.entity.profile_id = @s hub.entity.coop_profile_id
execute in exigence:profile_data positioned 8 128 8 as @e[type=marker,tag=ProfileNode,distance=..140] \
if score @s profile.node.profile_id = #compare hub.entity.profile_id at @s run function exigence:deck/process/analyze_deck

# update displays
execute at @s as @n[distance=..9,type=marker,tag=DeckAnalyzer] run function exigence:hub/deck_analyzer/update_displays