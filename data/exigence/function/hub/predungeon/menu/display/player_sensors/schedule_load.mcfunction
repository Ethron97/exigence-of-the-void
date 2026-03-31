# Function designed to let us schedule this, 
# but we need positioning so we can't just schedule the function directly

## CONSTRAINTS
#   schedule

#====================================================================================================

execute in exigence:hub positioned 0.5 209.0 104.5 at @n[type=marker,tag=PredungeonMenuNode,distance=..32] \
run function exigence:hub/predungeon/menu/display/player_sensors/load
