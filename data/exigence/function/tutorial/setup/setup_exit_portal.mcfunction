# Sets up exit portal for final section

## CONSTRAINTS
#   IN exigence:tutorial
#   AT location

#====================================================================================================

# Summon node entity
summon minecraft:marker ~ ~ ~ {Tags:["TutorialExitNode","NewTutorialExitNode"],CustomName:{text:"Marker | ExitNode"}}

# Perform data setups as subfunction (to reduce @e calls)
execute as @n[type=marker,tag=NewTutorialExitNode,distance=..3] run function exigence:tutorial/setup/setup_exit_portal_2
