# called by game/load/blockades/setup_loop

## CONSTRAINTS
#   AS HazardNode with setup (which only gets added if StartingHazard)

#   Base = hazard nodes dungeon "default" (difficulty + dungeon state)
#   = hazard nodes from other sources that created their own starting hazards (cards + items)

#====================================================================================================

execute if score toggle.hazard debug matches 1 if score debug.level debug matches 3.. run say (D3) Starting hazard

# Trigger hazard
function exigence:hazard/node/trigger
scoreboard players add hazard.total game.dungeon.hazard 1

execute if score @s node.property.object_level matches 1 run scoreboard players add hazard.level_1 game.dungeon.hazard 1
execute if score @s node.property.object_level matches 2 run scoreboard players add hazard.level_2 game.dungeon.hazard 1
execute if score @s node.property.object_level matches 3 run scoreboard players add hazard.level_3 game.dungeon.hazard 1
execute if score @s node.property.object_level matches 4 run scoreboard players add hazard.level_4 game.dungeon.hazard 1

# Remove tag
tag @s[tag=StartingHazard] remove StartingHazard
