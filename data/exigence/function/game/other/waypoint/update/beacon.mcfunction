# Update transmission based on type
# Called from e_tick

## CONSTRAINTS
#   AS waypoint (armor stand)

## INPUT
#   SCORE #active_on_same Temp - 1 = at least one player is on this waypoints' level

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 4.. run say (D4) Updating waypoint BEACON

# If player on level, color white
execute if score #active_on_same Temp matches 1 run waypoint modify @s color white

# If player not on level, color gray
execute if score #active_on_same Temp matches 0 run waypoint modify @s color dark_gray
