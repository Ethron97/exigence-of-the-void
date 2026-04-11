# Protect room while dungeon is loading

## CONSTRAINTS
#   AT center of predungeon ( 0.5 209.0 104.5 )
#   IN exigence:hub

#====================================================================================================

say (D3) Protect predungeon during load sequence

# Kill interactions
function exigence:hub/predungeon/node/kill_all_interactions

# Prevent leaving through the door
fill -1 210 98 1 212 98 purple_stained_glass
