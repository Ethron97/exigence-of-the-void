# Responsible for loading all tutorial functionality
#   Called when player first enters, or if they die/reset

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================
execute unless dimension exigence:tutorial run return run say (C) Trying to unload tutorial not in tutorial
#----------------------------------------------------------------------------------------------------

# DEBUG
#say (D3) Unload tutorial 

function exigence:tutorial/reset

function exigence:bossbar/tutorial/hide
function exigence:bossbar/tutorial_deck/hide
data modify storage exigence:dungeon tutorial set value 0
