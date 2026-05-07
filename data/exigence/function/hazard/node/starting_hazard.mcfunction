# called by game/load/blockades/setup_loop

## CONSTRAINTS
#   AS HazardNode with setup (which only gets added if StartingHazard)

#   Base = hazard nodes dungeon "default" (difficulty + dungeon state)
#   = hazard nodes from other sources that created their own starting hazards (cards + items)

#====================================================================================================

execute if score toggle.hazard debug matches 1 if score debug.level debug matches 3.. run say (D3) Starting hazard

# Trigger hazard
function exigence:hazard/node/trigger
scoreboard players add .hazard game.dungeon 1

# Remove tag
tag @s[tag=StartingHazard] remove StartingHazard
