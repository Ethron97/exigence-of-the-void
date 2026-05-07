# Clear tags etc
#   Called from game/unload

## CONSTRAINTS
#   HazardNode

#====================================================================================================

execute if score toggle.hazard debug matches 1 if score debug.level debug matches 4.. run say (D4) Unload

tag @s remove Active
tag @s remove NeedReset
tag @s remove Setup
tag @s remove StartingHazard