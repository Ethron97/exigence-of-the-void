# Update waypoint style (range never changes for echo waypoints)

## CONSTRAINTS
#   AS waypoint (armor stand)
#       Tag = EchoWaypoint

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 4.. run say (D4) Update waypoint DROPPED ECHO

# If there is a player on the same level, set to dropped style
execute if score #active_on_same Temp matches 1 run waypoint modify @s color aqua

# If there is not, set to greyed out
execute if score #active_on_same Temp matches 0 run waypoint modify @s color dark_gray