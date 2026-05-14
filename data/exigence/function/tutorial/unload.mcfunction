# Responsible for unloading tutorial

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================
execute unless dimension exigence:tutorial run return run say (C) Trying to unload tutorial not in tutorial
#----------------------------------------------------------------------------------------------------

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Unload tutorial 

function exigence:tutorial/reset

function exigence:bossbar/tutorial/hide
function exigence:bossbar/tutorial_deck/hide
scoreboard players set tut.active hub.tutorial 0
