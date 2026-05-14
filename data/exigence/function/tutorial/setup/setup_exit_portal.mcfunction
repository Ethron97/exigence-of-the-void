# Sets up exit portal for final section

## CONSTRAINTS
#   IN exigence:tutorial
#   AT location

#====================================================================================================
execute unless dimension exigence:tutorial run return run say (C) Called tutorial.setup_exit_portal without in exigence:tutorial, cancelling
#----------------------------------------------------------------------------------------------------

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup exit portal

# Summon node entity
summon minecraft:marker ~ ~ ~ {Tags:["TutorialExitNode","NewTutorialExitNode"],CustomName:{text:"Marker | ExitNode"}}

# Perform data setups as subfunction (to reduce @e calls)
execute as @n[type=minecraft:marker,tag=NewTutorialExitNode,distance=..1] run function exigence:tutorial/setup/setup_exit_portal_2
