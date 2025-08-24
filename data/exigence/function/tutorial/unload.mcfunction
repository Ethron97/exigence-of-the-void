# Responsible for loading all tutorial functionality
#   Called when player first enters, or if they die/reset

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

# DEBUG
say unload tutorial 

#forceload remove all
data modify storage exigence:dungeon tutorial set value 0
scoreboard players set Tutorial RoomToken 0
function exigence:tutorial/reset
