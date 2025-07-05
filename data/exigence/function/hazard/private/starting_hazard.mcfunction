# called by setup_starting_hazard

## CONSTRAINTS
#   AS HazardNode with SetupStartingHazard

#   SetupStartingHazard = hazard nodes from previous function
#   StartingHazard = hazard nodes from other sources that created their own starting hazards

#=============================================================================================================

# Trigger hazard
function exigence:hazard/node/trigger
scoreboard players add Hazard DungeonRun 1

# Add scores
execute as @s[type=minecraft:armor_stand,tag=!SetupStartingHazard,tag=StartingHazard] run function exigence:hazard/private/starting_score_from_card
execute as @s[type=minecraft:armor_stand,tag=SetupStartingHazard] run function exigence:hazard/private/starting_score_from_setup

# Remove tag
tag @s remove StartingHazard
tag @s remove SetupStartingHazard
