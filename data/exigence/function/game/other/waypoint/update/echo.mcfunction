# Update waypoint style (range never changes for 

## CONSTRAINTS
#   AS waypoint (armor stand)
#       Tag = EchoWaypoint

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 4.. run say (D4) Update waypoint ECHO

# If it was dropped (by player or death)
execute if entity @s[tag=DroppedItem] run return run function exigence:game/other/waypoint/update/dropped_echo
#----------------------------------------------------------------------------------------------------

# If there is not, set to greyed out (default, no level or star info)
execute if score #active_on_same Temp matches 0 run return run waypoint modify @s color dark_gray
#----------------------------------------------------------------------------------------------------

# TODO (future)
# If detection is active, add "stars" data so you know which 1-5 rank the echo is

# If there is a player on the same level, set to normal style (based on level)
execute if score #active_on_same Temp matches 1 if score @s game.entity.object_level matches 1 run return run waypoint modify @s color dark_aqua
execute if score #active_on_same Temp matches 1 if score @s game.entity.object_level matches 2 run return run waypoint modify @s color green
execute if score #active_on_same Temp matches 1 if score @s game.entity.object_level matches 3 run return run waypoint modify @s color blue
execute if score #active_on_same Temp matches 1 if score @s game.entity.object_level matches 4 run return run waypoint modify @s color light_purple
execute if score #active_on_same Temp matches 1 run waypoint modify @s color aqua