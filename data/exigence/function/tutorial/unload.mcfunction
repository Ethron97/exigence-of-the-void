# Responsible for loading all tutorial functionality
#   Called when player first enters, or if they die/reset

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================
execute unless predicate exigence:dimension/location/tutorial run say Trying to unload tutorial not in hub

# DEBUG
say Unload tutorial 

function exigence:tutorial/reset

function exigence:bossbar/tutorial/hide
function exigence:bossbar/tutorial_deck/hide
data modify storage exigence:dungeon tutorial set value 0
